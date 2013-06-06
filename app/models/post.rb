class Post < ActiveRecord::Base
  has_many :tagposts
  has_many :tags, :through => :tagposts

  validates :body, :presence => true
  validates :title, :presence => true
end
