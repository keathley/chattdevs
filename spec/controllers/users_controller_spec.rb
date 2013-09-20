require 'spec_helper'

describe UsersController do
  let(:user) { create(:user) }

  describe "GET #index" do
    before do
      users = (1..30).map { create(:user) }
    end

    after { User.destroy_all }

    it "assigns @users" do
      get :index
      expect(assigns(:users)).to_not be_nil
    end

    it "should only have a paginated list of users" do
      User.should_receive(:page).and_call_original
      get :index
    end
  end

  describe "GET #show" do
    it "redirects if the user is not the current user" do
      other_user = create(:user)
      get :show, :id => other_user.id
      expect(response).to redirect_to(root_path)
    end
  end

  describe "DELETE #destroy" do

    context "correct user" do
      it "destroys the user" do
        controller_sign_in user
        expect {
          delete :destroy, :id => user.id
        }.to change(User, :count).by(-1)
      end

      it "redirects to the root path" do
        controller_sign_in user
        delete :destroy, :id => user.id
        expect(response).to redirect_to(root_path)
      end
    end

    context "not the correct user" do

      it "redirects to the root path" do
        other_user = create(:user)
        delete :destroy, :id => other_user.id
        expect(response).to redirect_to(root_path)
      end

      it "does not destroy the user" do
        other_user = create(:user)
        expect {
          delete :destroy, :id => other_user.id
        }.to_not change(User, :count)
      end
    end
  end
end