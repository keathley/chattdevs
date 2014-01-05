# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :job do
    title "Super Awesome Senior Dev position"
    description "This is the description"
    company_name "MyCo"
    company_website "http://www.chattdevs.com"
    how_to_apply "This is how you apply for this job"
  end
end
