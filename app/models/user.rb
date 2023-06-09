class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :name, presence: true, length: { minimum: 2 }
  validates :username, presence: true, uniqueness: true, length: { minimum: 4, maximum: 50 }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
