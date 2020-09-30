class User < ApplicationRecord
  has_secure_password
  has_many :created_events, foreign_key: :creator_id, class_name: 'Event'

  has_many :user_events, foreign_key: :attendee_id
  has_many :events_attended, through: :user_events, dependent: :delete_all

end
