class Venue < ApplicationRecord
  belongs_to :district
  belongs_to :user, optional: true # 作成者

  has_many :route_items, as: :item, dependent: :destroy
  has_many :routes, through: :route_items
  has_many :reviews, as: :reviewable, dependent: :destroy
  has_many :likes, as: :likeable, dependent: :destroy
  has_many :bookmarks, as: :item, dependent: :destroy
  has_many :entity_tags, as: :entity, dependent: :destroy
  has_many :tags, through: :entity_tags
  has_many :place_owners, dependent: :destroy
  has_many :owners, through: :place_owners, source: :user

  # Active Storage (写真)
  has_many_attached :photos

  # バリデーション
  validates :name, presence: true, length: { maximum: 255 }
  validates :venue_type, presence: true
  validates :address, presence: true
  validates :geo_lat, :geo_lng, presence: true, numericality: true
  validates :status, inclusion: { in: %w[pending approved rejected] }

  # スコープ
  scope :approved, -> { where(status: 'approved') }
  scope :pending, -> { where(status: 'pending') }
  scope :featured, -> { where(is_featured: true).order(featured_order: :asc) }
  scope :popular, -> { order(popularity_score: :desc) }

  # メソッド
  def approved?
    status == 'approved'
  end

  def average_rating
    reviews.average(:total_score).to_f.round(1)
  end
end
