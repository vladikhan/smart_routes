class DmMessage < ApplicationRecord
  belongs_to :dm_room
  belongs_to :user

  validates :message, presence: true, length: { maximum: 5000 }

  # コールバック
  after_create :update_room_timestamp
  after_create :mark_as_unread

  private

  def update_room_timestamp
    dm_room.update_column(:last_message_at, created_at)
  end

  def mark_as_unread
    # 受信者への未読メッセージとしてマーク
    update_column(:is_read, false)
  end
end
