class District < ApplicationRecord
  belongs_to :city
  has_many :venues, dependent: :destroy

  validates :name, presence: true
  validates :name, uniqueness: { scope: :city_id }
end
