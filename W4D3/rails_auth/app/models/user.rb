# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  attr_reader :password
  validates :username, :session_token, presence: true
  validate :valid_password_digest
  validates :password, length: { minimum: 6, allow_nil: true }

  def self.find_by_credentials(username, pw)
    password_digest = BCrypt::Password.create(pw)
    User.find_by(username: username, password_digest: password_digest)
  end

  def self.generate_session_token
    SecureRandom::urlsafe_base64
  end

  def reset_session_token!
    self.session_token = User.generate_session_token
  end

  before_validation :ensure_session_token
  def ensure_session_token
    self.session_token ||= User.generate_session_token
  end

  def password=(pw)
    @password = pw
    password_digest = BCrypt::Password.create(@password)
    self.password_digest = password_digest
  end


  def valid_password_digest
    if self.password_digest.nil?
      errors[:password_digest] << "Password can't be blank"
    end
  end
end
