class Work < ApplicationRecord
  belongs_to :duty
  belongs_to :user
  validates :user_id, uniqueness: { scope: :duty_id, message: "is already in your list" }
end
