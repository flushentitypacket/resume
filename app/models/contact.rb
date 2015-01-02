class Contact < ActiveRecord::Base
  validates_presence_of :name
  validates :email, presence: true, uniqueness: true, email: true
  validates :phone_number, presence: true, uniqueness: true
end
