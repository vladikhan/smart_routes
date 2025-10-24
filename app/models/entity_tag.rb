class EntityTag < ApplicationRecord
  belongs_to :tag
  belongs_to :entity, polymorphic: true

  validates :tag_id, uniqueness: {scope: [:entity_type, :entity_id],
  message: "このタグは既に追加されています"
}
end
