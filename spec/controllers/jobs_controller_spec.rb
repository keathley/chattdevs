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

    it "should only display jobs that are current" do
      old_job = create(:job, :created_at => 30.days.ago)
      get :index
      assigns(:jobs).count.should eq(1)
    end

    it "should only display jobs that are approved" do
      unapproved_job = create(:job, :approved => false)
      get :index
      assigns(:jobs).count.should eq(1)
    end
  end

  describe "GET #show" do
    before do
      get :show, :id => job.id
    end

    it { should be_success }
    specify { assigns(:job).should_not be_nil }

    it "should only display jobs that are current" do
      expect {
        unapproved_job = create(:job, :approved => false)
        get :show, :id => unapproved_job.id
      }.to raise_error(ActionController::RoutingError)
    end
  end

  describe "GET 'new'" do
    before do
      get :new
    end

    it { should be_success }
    specify { assigns(:job).should_not be_nil }
  end

  describe "POST 'create'" do
    context "when job is valid" do
      before do
        post :create, :job => attributes_for(:job)
      end

      it { should redirect_to jobs_path }
      specify { assigns(:job).should_not be_nil }
      specify { assigns(:job).errors.should be_empty }
    end

    context "when job is invalid" do
      before do
        post :create, :job => {
          title: "Super Awesome Senior Dev position"
        }
      end

      it { should_not redirect_to jobs_path }
      specify { assigns(:job).should_not be_nil }
      specify { assigns(:job).errors.should_not be_empty }
    end
  end
end
