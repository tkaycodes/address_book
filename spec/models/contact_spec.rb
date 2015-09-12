require 'rails_helper'

describe Contact do 
  it "has a valid factory" do
    expect(FactoryGirl.build(:contact)).to be_valid
  end

  it "validates phone number-must be number" do 
    expect(FactoryGirl.build(:contact, phone_number: "hello")).not_to be_valid
  end

  it "is invalid without a first name" do
    expect(FactoryGirl.build(:contact, first_name:nil)).not_to be_valid
  end

  it "is invalid without a last name" do
    expect(FactoryGirl.build(:contact, last_name:nil)).not_to be_valid
  end  

  it "is invalid without a last name" do
    expect(FactoryGirl.build(:contact, last_name:nil)).not_to be_valid
  end

  it "is has unique combination of first_name and last_name" do
    contact1=FactoryGirl.create(:contact)
    contact2=FactoryGirl.build(:contact, first_name: contact1.first_name, last_name: contact1.last_name)
    # puts "contact 1: #{contact1.inspect}, contact2: #{contact2.inspect}"
    expect(contact1).to be_valid
    expect(contact2).not_to be_valid
  end
  
end





