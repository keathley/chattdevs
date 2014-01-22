namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    make_users
    make_jobs
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

def make_jobs
  positions = [
    "Senior Developer",
    "Junior Developer",
    "Code Ninja",
    "Code Surfer",
    "Pro Hacker",
    "Programmer"
  ]

  20.times do |n|
    job = Job.new(
      title: positions.sample,
      description: "#{Faker::Lorem.paragraph}",
      company_name: Faker::Company.name,
      company_website: Faker::Internet.domain_name,
      how_to_apply: "Send an email to #{Faker::Internet.email}",
      approved: true
    ).save
  end
end