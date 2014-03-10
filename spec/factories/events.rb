# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    title "MyString"
    starts_at "2013-10-05 22:54:53"
    email "turing@chatdevs.com"
  end
end
