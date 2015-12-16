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

		it { should accept_values_for(:name, user.name) }
		it { should accept_values_for(:email, user.email) }
		it { should accept_values_for(:password, user.password) }
	end
end