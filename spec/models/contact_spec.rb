require 'rails_helper'

describe Contact do 
  it "has a valid factory" do
    expect(build(:contact)).to be_valid
  end
end