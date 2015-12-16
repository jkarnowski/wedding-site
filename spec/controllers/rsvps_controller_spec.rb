require 'rails_helper'

RSpec.describe RsvpsController, type: :controller do

  let(:rsvp) {FactoryGirl.create(:rsvp) }
  let(:invalid_rsvp) {FactoryGirl.create(:rsvp, email: nil) }

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "returns a collection of users" do
      
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do

    context "with valid RSVP attributes" do

      it "saves a new RSVP to the database" do 
        expect {
          post :create,
          rsvp: rsvp
        }.to change(Rsvp, :rsvp)
      end

      it "redirects to the home page" do 
        expect(response).to render root_path
      end
    end

    context "with invalid RSVP attributes" do 

      it "does not save the RSVP to the database" do 
        expect {
          post :create,
          rsvp: invalid_rsvp
        }.to_not change(Rsvp, :rsvp)
      end

      it "re-renders the rsvp :new form" do 
        expect(response).to render_template :new
      end
    end
  end

end
