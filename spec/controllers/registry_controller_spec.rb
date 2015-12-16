require 'rails_helper'

RSpec.describe RegistryController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "populates an array of registry items" do
    	# get :index
    	# expect(response).to have()
    end
  end

end
