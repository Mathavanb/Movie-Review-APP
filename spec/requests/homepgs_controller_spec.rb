require 'rails_helper'

RSpec.describe HomepgsController, type: :controller do
  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    let(:homepg) { FactoryBot.create(:homepg) }

    it "returns http success" do
      get :show, params: { id: homepg.id }
      expect(response).to have_http_status(:redirect)
    end
  end

  let(:valid_attributes) { attributes_for(:homepg) }
  describe "POST #create" do

    context "with invalid params" do
      let(:invalid_params) {
        { homepg: { movie_name: nil, release_date: nil } }
      }

      it "does not create a new Homepg" do
        expect {
          post :create, params: invalid_params
        }.to_not change(Homepg, :count)
      end

      it "renders the new template" do
        usr = create(:user)
        sign_in usr
        post :create, params: { homepg: { title: "" } }
        expect(response).to redirect_to("http://test.host/homepgs.1")
      end
    end
  end
end
