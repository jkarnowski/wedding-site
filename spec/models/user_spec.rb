require 'rails_helper'

RSpec.describe User, type: :model do
	let(:user) { FactoryGirl.create(:user) }

	describe "a user" do
		it "has a valid factory" do
			expect(user).to be_valid
		end
	end

	describe "user model validations" do
		let(:valid_user) { FactoryGirl.create(:valid_user) }
		let(:invalid_name) { FactoryGirl.create(:invalid_name, name: nil) }
		let(:invalid_email) { FactoryGirl.create(:invalid_email, email: nil) }

		context "when the user is valid" do
			it "is a user with a unique name" do
				expect(user.name).to validate_uniqueness_of(:user)
			end

			it "is a user with a unique email" do
				expect(user.email).to validate_uniqueness_of(:user)
			end
		end

		context "when the user is not valid" do
			it "is invalid without a name" do
			end

			it "is invalid without an email" do 
			end

			it "does not allow duplicate names for a user" do 
			end

			it "does not allow duplicate emails for a user" do 
			end
			
		end

	end
end



# has_many :playlists

# accepts_nested_attributes_for :playlists

# validates :email, presence: true, uniqueness: true
# validates :name, presence: true, uniqueness: true
# validates :rsvp_response, presence: true