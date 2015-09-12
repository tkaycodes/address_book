FactoryGirl.define do
  factory :contact do |c|
    c.first_name   { Faker::Name.first_name }
    c.last_name    { Faker::Name.last_name }
    c.email        { Faker::Internet.email  }
    c.phone_number { 6044339393 }
  end
end

