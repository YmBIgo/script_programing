class Message < ActiveRecord::Base
  belongs_to :user

  validates :m_text, :send_to, :user_id, presence: true

  paginates_per 10
end
