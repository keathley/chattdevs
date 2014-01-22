require 'spec_helper'

describe EventsController do

  subject { response }

  describe "GET 'index'" do
    let!(:e1) { create(:event, :approved => true) }
    before do
      Event.should_receive(:approved).and_call_original
      get 'index'
    end

    it { should be_success }
    specify { assigns(:events).should_not be_empty }
  end

  describe "GET #new" do
    before do
      get :new
    end

    it { should be_success }
    specify { assigns(:event).should_not be_nil }
  end

  describe "POST #create" do
    context "when event is invalid" do
      before do
        post :create, :event => { title: "Test" }
      end

      it { should be_success }
      specify { assigns(:event).should_not be_nil }
      specify { assigns(:event).errors.should_not be_empty }
    end

    context "when event is valid" do
      before do
        post :create, :event => {
          :title => "test title",
          :starts_at => DateTime.current,
          :email => "test@email.com"
        }
      end

      it { should redirect_to events_path }
      specify { assigns(:event).should_not be_nil }
      specify { assigns(:event).errors.should be_empty }
    end
  end
end
