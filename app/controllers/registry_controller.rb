class RegistryController < ApplicationController
  def index
  	items = Registry.all 

  	render json: {title: title, description: description, total_cost: total_cost}, status: 200
  end
end
