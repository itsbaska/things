class Attendance < ActiveRecord::Base
  belongs_to :potluck
  belongs_to :attendee, class_name: "User"

  validates_uniqueness_of :attendee_id, scope: :potluck_id
end
