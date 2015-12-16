require 'rails_helper'

RSpec.describe User, type: :model do

	let(:user) { FactoryGirl.build(:user) }

	describe "a user" do
		
		it "has a valid factory" do
			expect(user).to be_valid
		end
	end

	describe "user model validations" do

		it { should_not accept_values_for(:name, nil) }
		it { should_not accept_values_for(:email, nil) }
		it { should_not accept_values_for(:password, nil) }

		it { should accept_values_for(:name, "Ashley") }
		it { should accept_values_for(:email, "ashley@testing.com") }
		it { should accept_values_for(:password, "testing123") }
	end
end