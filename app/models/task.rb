class Task < ApplicationRecord
  validates :name, presence: true, length: { minimum: 1 }
  validates :detail, length: {maximum: 50}
end
