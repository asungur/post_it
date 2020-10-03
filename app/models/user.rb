class User < ApplicationRecord
  validates :username, presence: true, length: { maximum: 50 }

  has_secure_password
  validates :password, presence: true, on: :create,
                       length: { minimum: 5 }, allow_nil: true

  has_many :posts
  has_many :comments
  has_many :votes

end
