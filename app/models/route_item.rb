class RouteItem < ApplicationRecord
  belongs_to :route
  belongs_to :item, polymorphic: true

  validates :position, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :position, uniqueness: { scope: :route_id }

  acts_as_list scope: :route
end
