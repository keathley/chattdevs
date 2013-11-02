require 'spec_helper'

describe Event do
  let(:event) { create(:event) }

  subject { event }

  it { should have_db_column(:title) }
  it { should have_db_column(:link) }
  it { should have_db_column(:starts_at) }
  it { should have_db_column(:email) }
  it { should have_db_column(:approved) }

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:starts_at) }

  it { should be_valid }
end
