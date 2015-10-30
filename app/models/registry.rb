class Registry < ActiveRecord::Base
	validates_presence_of :title, :description, :total_cost
end
