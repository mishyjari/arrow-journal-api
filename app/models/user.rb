class User < ApplicationRecord
  has_secure_password
  has_many :journals
  has_many :events, through: :journals
  has_many :tasks, through: :journals 
  has_many :memos, through: :journals
end
