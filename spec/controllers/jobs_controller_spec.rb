require 'spec_helper'

describe JobsController do
  let!(:job) { create(:job) }

  subject { response }

  describe "GET #index" do
    before do
      get :index
    end

    it { should be_success }
    specify { assigns(:jobs).should_not be_empty }
  end

  describe "GET #show" do
    before do
      get :show, :id => job.id
    end

    it { should be_success }
    specify { assigns(:job).should_not be_nil }
  end

  describe "GET 'new'" do
    before do
      get :new
    end

    it { should be_success }
    specify { assigns(:job).should_not be_nil }
  end

  describe "POST 'create'" do
    before do
      post :create, :job => attributes_for(:job)
    end

    it { should redirect_to jobs_path }
    specify { assigns(:job).should_not be_nil }
    specify { assigns(:job).errors.should be_empty }
  end

end
