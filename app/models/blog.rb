class Blog < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  has_many :comments

  validates :title, :content, :author_id,  presence: true
  validates :title, length: { maximum: 50 }
  validates :content, length: { maximum: 1500 }
end
