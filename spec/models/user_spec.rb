require 'rails_helper'

RSpec.describe User, type: :model do

	let(:user) { FactoryGirl.build(:user) }

	describe "a user" do
		
		it "has a valid factory" do
			expect(user).to be_valid
		end
	end

	describe "user model validations" do
		let(:valid_user) { FactoryGirl.create(:user) }
		let(:invalid_name) { FactoryGirl.create(:user, name: nil) }
		let(:invalid_email) { FactoryGirl.create(:user, email: nil) }

		context "when the user is valid" do
			it "is a user with a unique name" do
				expect(valid_user).to be true
			end

			it "is a user with a unique email" do
				expect(valid_user.email).to validate_uniqueness_of(:valid_user)
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