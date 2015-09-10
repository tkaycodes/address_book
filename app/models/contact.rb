class Contact < ActiveRecord::Base
  validates :phone_number, numericality: {only_integer: true}

  belongs_to :user
end
