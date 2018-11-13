class User < ApplicationRecord
  has_secure_password

  has_many :trips
  has_many :meals, through: :trips

  validates :username, :email, presence: true, uniqueness: true
  validates :location, presence: true

  def authenticate(plaintext_password)
    if BCrypt::Password.new(self.password_digest) == plaintext_password
      self
    else
      false
    end
  end

  def current_meal
    meals.find { |meal| meal.current_meal === true }
  end
end
