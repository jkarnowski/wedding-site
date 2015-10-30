class RegistryController < ApplicationController
  
  def index
  	@items = Registry.all

  	total_cost = []

  	@items.each do |item|
  		total_cost << item.total_cost
  	end

  	if request.xhr?
  		render json: total_cost, status: 200, layout: false
  	else
  		render 'index'
  	end
  end
  
end
