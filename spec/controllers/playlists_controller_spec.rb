require 'rails_helper'

RSpec.describe PlaylistsController, type: :controller do

  let!(:playlist) {FactoryGirl.create(:playlist) }

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "populates an array of playlists" do
      get :index
      expect(assigns(:playlists)).to eq([:playlist])
    end

    it "renders the #index view" do
      get :index
      expect(response).to render_template :index
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    let(:invalid_playlist) {FactoryGirl.create(:playlist, song: nil) }

    context "with valid attributes" do 

      it "saves a new playlist with songs to the database" do
        expect {
          post :create,
          playlist: playlist
          }.to change(Playlist, :playlist).by(1)
        end

        it "redirects to the home page" do
        end
      end

      context "with invalid attributes" do 
        it "does not save a playlist to the database" do
          expect {
            post :create,
            playlist: invalid_playlist
            }.to_not change(Playlist, :playlist).by(1)
          end

          it "re-renders the :new form" do
            expect {
              post :create,
              playlist: invalid_playlist
            }
            expect(response).to render_template :new
          end
        end
      end
    end