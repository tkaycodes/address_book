class Contact < ActiveRecord::Base

  before_validation :strip_phone_number

  validates :phone_number, numericality: {only_integer: true}

  belongs_to :user

  validates :first_name, :last_name, presence: true
  validates :first_name, uniqueness: {scope: :last_name, message: "That name already exists!"}


  private

  def strip_phone_number
    self.phone_number.gsub!(/[^0-9]/, "");
  end
  # will strip phone numbers containing brackets, dashes, dots
  # ex (604)343-3242 => 6043433242

end
