class User < ApplicationRecord
  has_many :events, foreign_key: :creator_id
  has_many :attendances, foreign_key: :attendee_id
  has_many :attended_events, through: :attendances, dependent: :delete_all

  validates_presence_of :name
  validates_presence_of :email
end
