class Comment < ApplicationRecord
  belongs_to :blog
	belongs_to :user

  validates :comment_entry, :blog_id, presence: true
end
