namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    make_users
  end
end

def make_users
  20.times do |n|
    name = Faker::Name.name
    email = "test-#{n}@test.com"
    nickname = "test#{n}"
    
    user = User.new(:name => name, :email => email, :nickname => nickname)
    user.save
  end
end