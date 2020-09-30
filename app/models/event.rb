class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'

  has_many :user_events, foreign_key: :event_attended_id
  has_many :attendees, through: :user_events, source: :attendee, dependent: :delete_all


end
