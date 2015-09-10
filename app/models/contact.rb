class Contact < ActiveRecord::Base
  validates :phone_number, numericality: {only_integer: true}

  belongs_to :user

  validates :first_name, :last_name, presence: true
  validates :first_name, uniqueness: {scope: :last_name, message: "That name already exists!"}
end
