class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :works
  has_many :duties_requested, through: :works, source: :duty
  has_many :duties
  has_one_attached :profile_photo
  has_one :type

  validates :name, presence: true
  validates :descriprion, presence: true
  validates :zip_code, presence: true
  validates :email, presence: true, format: { with: /.+@.+\..+/, message: "enter a valid email"}
  validates :password, presence: true, length: { minimum: 6 }
  validates :profile, presence: true, length: { minimum: 6 }
end
