class User < ApplicationRecord
  validates :name, presence:true, length: {maximum:50}
  before_save {self.email = self.email.downcase}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i #メールアドレス用正規表現
  validates :email, presence:true, length: {maximum:255}, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}#大文字小文字を区別しない
  has_secure_password
  validates :password, presence: true, length: {minimum: 6}
end
