require 'spec_helper'

describe Event do

  let(:event) { Event.new }

  it { should have_db_column(:title) }

  it { should validate_presence_of(:title) }
end
