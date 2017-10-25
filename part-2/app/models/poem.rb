class Poem < ActiveRecord::Base
  validates :body, { presence: { message: "Empty poems don't lend themselves to being read.  Please write something." }}

  after_initialize :set_default_values, :if => :new_record?

  def self.recent(count = 5)
    order(:created_at => :desc).limit(count)
  end

  private
  def set_default_values
    self.author = "Anonymous" unless self.author && !self.author.empty?
    self.title  = "Untitled"  unless self.title  && !self.title.empty?
  end
end
