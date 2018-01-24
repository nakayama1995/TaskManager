class Task < ApplicationRecord
  #default_scope -> { order(created_at: :desc) }
  validates :name, presence: true, length: { minimum: 1 }
  validates :detail, length: {maximum: 50}
end
