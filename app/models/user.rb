class User < ActiveRecord::Base
  has_many :blogs, foreign_key: "author_id"
  has_many :comments, through: :blogs
  has_secure_password

	before_save { self.email = email.downcase }
  validates :name,  presence: true, length: { maximum: 20 }
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # validates :email, presence: true, length: { maximum: 255 },
  #                   format: { with: VALID_EMAIL_REGEX },
  #                   uniqueness: { case_sensitive: false }
end
