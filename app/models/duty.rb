class Duty < ApplicationRecord
  has_many :works, dependent: :destroy
  has_many :doctors, through: :works, source: :user
  belongs_to :user
  has_many_attached :photos

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # validates :address, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_address, against: [:address]

  validates :status, :date, :payment, presence: true
end
