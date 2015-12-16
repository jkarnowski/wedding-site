require 'rails_helper'
require 'stripe_mock'

RSpec.describe ChargesController, type: :controller do

	let(:stripe_helper) { StripeMock.create_test_helper }
	before { StripeMock.start }
	after { StripeMock.stop }

	describe "POST #create a new Stripe customer" do
		let(:customer) { Stripe::Customer.create({ 
			email: 'elves@northpole.com', 
			card: stripe_helper.generate_card_token
			})
	}

		context "with a valid transaction" do

			it "creates a stripe customer" do 
				expect(customer.email).to eq('elves@northpole.com')
			end

			it "mocks a successful credit card transaction" do
				post '/charges', {stripeEmail: "test@testing.com",
					stripeToken: stripe_helper.generate_card_token,
					amount: 100
				}
				expect(response).to redirect_to charge_path
			end
		end

		context "with an invalid transaction" do

			it "mocks a declined credit card" do 
				StripeMock.prepare_card_error(:card_declined)
					expect { Stripe::Charge.create(amount: 1, currency: 'usd') }.to raise_error {|e|
			    expect(e).to be_a Stripe::CardError
			    expect(e.http_status).to eq(402)
			    expect(e.code).to eq('card_declined')
		  }
			end

			it "re-renders the stripe form" do 
				expect(response).to render_tample :new
			end
		end
	end
end
