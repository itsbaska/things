class User < ActiveRecord::Base
  include BCrypt

  has_many :potlucks, foreign_key: :host_id
  has_many :attendances, foreign_key: :attendee_id
  has_many :attending_potlucks, through: :attendances, source: :potluck

  validates :username, :name, :email, presence: {message: "is missing."}

  validate :validate_password

  def attending?(potluck)
    self.attending_potlucks.include?(potluck)
  end

  def guest?(potluck)
    self != potluck.host
  end

  def to_attend
    self.attending_potlucks.select { |potluck| potluck.upcoming? }
  end

  def previously_attended
    self.attending_potlucks.reject { |potluck| potluck.upcoming? }
  end

  def to_host
    self.potlucks.select { |potluck| potluck.upcoming? }
  end

  def previously_hosted
    self.potlucks.reject { |potluck| potluck.upcoming? }
  end

  def password
    @password ||= Password.new(encrypted_password)
  end

  def password=(plain_text_password)
    @raw_password = plain_text_password
    @password = Password.create(plain_text_password)
    self.encrypted_password = @password
  end

  def authenticate(plain_text_password)
    self.password == plain_text_password
  end

  def validate_password
    if @raw_password.nil?
      errors.add(:password, "is required.")
    elsif @raw_password.length < 6
      errors.add(:password, "must be 6 characters or more.")
    end
  end
end
