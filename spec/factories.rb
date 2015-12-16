FactoryGirl.define do 

	factory :user do
		name "Jaclyn Perez"
		email "jac@test.com"
		password "testing123"
		rsvp_response "yes"
	end

	factory :playlist do
		song "If You Wanna Be My Lover"
		user
	end

	factory :registry do
		title "Airline Tickets"
		description "Fly us to the beach"
		total_cost 300
		desired_amount 30
		multiplier 10
		remaining_amount 300
		image "http://pics.filmaffinity.com/Factory_Girl-779993240-large.jpg"
	end
end