FactoryGirl.define do
  factory :user do 
    email   { Faker::Internet.email }
    password { "32423fdsfasf42" }

    factory :user_with_contacts do 
      transient do 
        contacts_count 2
      end
      after(:create) do |user, evaluator|
        create_list(:contact, evaluator.contacts_count, user: user)
      end
    end
  end
end