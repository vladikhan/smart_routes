class DmRoom < ApplicationRecord
  belongs_to :sender, class_name: "User"
  belongs_to :receiver, class_name: "User"

  has_many :dm_messages, dependent: :destroy

  validates :sender_id, uniqueness: { scope: :receiver_id }

  # メソッド
  def other_user(current_user)
    current_user.id == sender_id ? receiver : sender
  end

  def last_message
    dm_messages.order(created_at: :desc).first
  end
end
