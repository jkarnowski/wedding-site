require 'rails_helper'

RSpec.describe Playlist, type: :model do

	let(:playlist) { FactoryGirl.build(:playlist) }

	describe "a playlist" do
		
		it "has a valid factory" do
			expect(playlist).to be_valid
		end
	end

	describe "playlist model validations" do

		it { should_not accept_values_for(:song, nil) }

		it { should accept_values_for(:song, playlist.song) }
	end
end