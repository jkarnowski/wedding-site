require 'rails_helper'

RSpec.describe Registry, type: :model do

	let(:registry) { FactoryGirl.build(:registry) }

	describe "a registry" do
		
		it "has a valid factory" do
			expect(registry).to be_valid
		end
	end

	describe "registry model validations" do

		it { should_not accept_values_for(:title, nil) }
		it { should_not accept_values_for(:description, nil) }
		it { should_not accept_values_for(:total_cost, nil) }

		it { should accept_values_for(:title, registry.title) }
		it { should accept_values_for(:description, registry.description) }
		it { should accept_values_for(:total_cost, registry.total_cost) }
		it { should accept_values_for(:image, registry.image) }
		it { should accept_values_for(:desired_amount, registry.desired_amount) }
		it { should accept_values_for(:multiplier, registry.multiplier) }
		it { should accept_values_for(:remaining_amount, registry.remaining_amount) }
	end
end