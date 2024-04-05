class Passenger < ApplicationRecord
  belongs_to :booking

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
