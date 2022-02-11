class Task < ApplicationRecord
  validates :person, presence: true
  validates :overview, presence: true
end
