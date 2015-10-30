class RegistryController < ApplicationController
  
  def index
  	@items = Registry.all 
  end
  
end
