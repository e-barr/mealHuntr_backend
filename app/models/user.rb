class User < ApplicationRecord
  has_secure_password

  has_many :trips
  has_one :current_meal, through: :trips

  validates :username, :email, presence: true, uniqueness: true
  validates :location, presence: true

  def authenticate(plaintext_password)
    if BCrypt::Password.new(self.password_digest) == plaintext_password
      self
    else
      false
    end
  end
end
