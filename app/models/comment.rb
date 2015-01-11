class Comment < ActiveRecord::Base
  belongs_to :commenter, class_name: "User"
  belongs_to :blog, foreign_key: "blog_id"
end
