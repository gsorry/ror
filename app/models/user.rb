class User < ApplicationRecord
  validates :email, presence: true, length: { minimum: 3 }
  validates :password, presence: true, length: { minimum: 8, maximum: 16 }
  validates :first_name, presence: true
  validates :last_name, presence: true
end
