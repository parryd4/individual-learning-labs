class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true

  # has_many :user_labs
  # has_many :labs, through: :user_labs
  has_many :labs
  has_many :materials
end
