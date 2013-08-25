class News < ActiveRecord::Base
  belongs_to :user

  attr_accessible :author, :content, :title, :user_id
  validates :title, :author, :content, presence: true
end
