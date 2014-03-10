require 'spec_helper'

describe "Jobs pages" do

  describe "GET #show page" do

    describe "description" do
      it "should parse the description section with markdown" do
        job = create(
          :job,
          :approved => true,
          :description => "# This is a header"
        )
        visit job_path(job)
        expect(page).to have_css("h1", :text => "This is a header")
      end
    end

    describe "how to apply" do
      it "should parse any links correctly"
      it "should parse any email addresses correctly"
    end
  end
end