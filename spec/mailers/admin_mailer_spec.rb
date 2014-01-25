require "spec_helper"

describe AdminMailer do
  let(:job) { create(:job) }

  subject { mail }

  describe "#new_job_posting" do
    let(:mail) { AdminMailer.new_job_posting(job) }

    it "renders the subject" do
      mail.subject.should_not be_nil
    end

    it "renders the sender email" do
      mail.to.should == ["spyc3r+chattdevs@gmail.com"]
    end
  end
end
