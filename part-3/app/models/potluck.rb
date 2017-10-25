class Potluck < ActiveRecord::Base
  belongs_to :host, class_name: "User"
  has_many :attendances
  has_many :attendees, through: :attendances

  validates :name, presence: { message: "is missing." }
  validates :location, presence: { message: "is missing." }
  validates :starts_at, presence: { message: "is missing." }

  def upcoming?
    Time.zone = 'Central Time (US & Canada)'
    self.starts_at > Time.zone.now
  end
end
