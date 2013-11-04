require 'spec_helper'

describe EventMailer do

  describe "notify_admins" do
    let(:event) { create(:event) }
    let(:mail) { EventMailer.notify_admins(event) }

    subject { mail }

    it 'renders the subject' do
      mail.subject.should_not be_nil
    end

    it 'renders the sender email' do
      mail.to.should == ["chattanoogadeveloper@gmail.com"]
    end
  end
end