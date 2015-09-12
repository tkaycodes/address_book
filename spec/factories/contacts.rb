FactoryGirl.define do
  factory :contact do

    user #association

    # contact attributes
    first_name   { Faker::Name.first_name }
    last_name    { Faker::Name.last_name }
    email        { Faker::Internet.email  }
    phone_number { 6044339393 }
    
  end

end

