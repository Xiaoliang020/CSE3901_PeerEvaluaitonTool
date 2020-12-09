class User < ApplicationRecord
  has_secure_password
  has_one :student, foreign_key: "user_id"
  validates :email, presence:true, uniqueness: true, uniqueness: {message: 'already registered'}, format: { with: /w*\.[1-9]\d*@osu\.edu/}
  validates :password, presence: true
  validates :password_confirmation, presence: true, confirmation: { case_sensitive: true }
end
