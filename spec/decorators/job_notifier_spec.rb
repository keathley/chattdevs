require 'spec_helper'

describe JobNotifier do
  let(:job) { create(:job) }

  subject { JobNotifier.new(job) }

  it { should respond_to(:save) }
  it { should respond_to(:errors) }

  describe "#save" do
    it "should save the underlying job" do
      job.should_receive(:save)
      subject.save
    end

    it "should send a notification" do
      subject.should_receive(:send_email_to_admins)
      subject.save
    end

    describe "integration" do
      it "should send an email" do
        expect do
          subject.save
        end.to change { ActionMailer::Base.deliveries.count }.by(1)
      end
    end
  end
end