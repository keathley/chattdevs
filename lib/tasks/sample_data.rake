namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    make_users
  end
end

def make_users
  20.times do |n|
    provider = "Github"
    uid = "1234abd"
    name = Faker::Name.name
    email = "test-#{n}@test.com"
    nickname = "test#{n}"

    user = User.new(
      :provider => provider,
      :uid => uid,
      :name => name,
      :email => email,
      :nickname => nickname
    )
    user.save
  end
end