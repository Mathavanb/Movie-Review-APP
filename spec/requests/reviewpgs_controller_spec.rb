require 'rails_helper'

RSpec.describe ReviewpgsController, type: :controller do
  describe "POST #create" do
    let(:homepg) { create(:homepg) }
    let(:user) { create(:user) }

    context "with valid parameters" do
      it "creates a new reviewpg" do
        sign_in user
        expect {
          post :create, params: { homepg_id: homepg.id, reviewpg: attributes_for(:reviewpg) }
        }.to change(Reviewpg, :count).by(1)
      end

      it "redirects to the homepg's reviewpgs page" do
        sign_in user
        post :create, params: { homepg_id: homepg.id, reviewpg: attributes_for(:reviewpg) }
        expect(response).to redirect_to("http://test.host/homepgs/1/reviewpgs.1")
      end
    end

    context "with invalid parameters" do
      it "does not create a new reviewpg" do
        sign_in user
        expect {
          post :create, params: { homepg_id: homepg.id, reviewpg: attributes_for(:reviewpg, review: nil) }
        }.to_not change(Reviewpg, :count)
      end

      it "renders the new template" do
        sign_in user
        post :create, params: { homepg_id: homepg.id, reviewpg: attributes_for(:reviewpg, review: nil) }
        expect(response).to have_http_status(:unprocessable_entity)

      end
    end
  end

  describe "PATCH #update" do
    let(:homepg) { create(:homepg) }
    let(:user) { create(:user) }
    let(:reviewpg) { create(:reviewpg, homepg: homepg, user: user) }

    context "with valid parameters" do
      it "updates the reviewpg" do
        sign_in user
        patch :update, params: { homepg_id: homepg.id, id: reviewpg.id, reviewpg: { review: "Updated review" } }
        reviewpg.reload
        expect(reviewpg.review).to eq("Updated review")
      end

      it "redirects to the homepg's reviewpgs page" do
        sign_in user
        patch :update, params: { homepg_id: homepg.id, id: reviewpg.id, reviewpg: { review: "Updated review" } }
        expect(response).to redirect_to("http://test.host/homepgs/1/reviewpgs.1")
      end
    end

    context "with invalid parameters" do
      it "does not update the reviewpg" do
        sign_in user
        patch :update, params: { homepg_id: homepg.id, id: reviewpg.id, reviewpg: { review: nil } }
        reviewpg.reload
        expect(reviewpg.review).to_not eq(nil)
      end

      it "renders the edit template" do
        sign_in user
        patch :update, params: { homepg_id: homepg.id, id: reviewpg.id, reviewpg: { review: nil } }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "DELETE #destroy" do
    let(:homepg) { create(:homepg) }
    let(:user) { create(:user) }
    let!(:reviewpg) { create(:reviewpg, homepg: homepg, user: user) }

    it "destroys the reviewpg" do
      sign_in user
      expect {
        delete :destroy, params: { homepg_id: homepg.id, id: reviewpg.id }
      }.to change(Reviewpg, :count).by(-1)
    end

    it "redirects to the homepg's reviewpgs page" do
      sign_in user
      delete :destroy, params: { homepg_id: homepg.id, id: reviewpg.id }
      expect(response).to redirect_to(homepg_reviewpgs_path(homepg))
    end
  end
end
