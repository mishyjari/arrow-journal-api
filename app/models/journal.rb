class Journal < ApplicationRecord
  belongs_to :user
  has_many :events
  has_many :tasks
end
