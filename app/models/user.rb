class User < ApplicationRecord
  has_many :user_answers
  has_secure_password
  enum :role, { student: 0, teacher: 1 }
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
