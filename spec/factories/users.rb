require 'factory_girl'

FactoryGirl.define do
  factory :user do
    provider "github"
    uid "1234567"
    name "Test User"
    email "test@chattdevs.com"
    nickname "tester"
    admin false
  end
end