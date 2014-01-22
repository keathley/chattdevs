require 'spec_helper'

describe Job do
  let(:job) { create(:job) }

  subject { job }

  it { should have_db_column(:title) }
  it { should have_db_column(:description) }
  it { should have_db_column(:company_name) }
  it { should have_db_column(:company_website) }
  it { should have_db_column(:how_to_apply) }

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:company_name) }
  it { should validate_presence_of(:how_to_apply) }

  specify { Job.should respond_to(:alive) }
end
