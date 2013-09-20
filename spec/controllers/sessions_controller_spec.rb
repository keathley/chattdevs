require 'spec_helper'

describe SessionsController do

  context "POST #create" do

    describe "invalid response" do
      let(:invalid_hash) { invalid_oauth_response }

      before do
        OmniAuth.config.mock_auth[:github] = invalid_hash
        request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:github]
      end

      it "should redirect to index" do
        post :create, :provider => 'github'
        expect(response).to redirect_to(root_path)
      end

      it "should populate the error message" do
        post :create, :provider => 'github'
        flash[:error].should_not be_nil
      end
    end
  end

end