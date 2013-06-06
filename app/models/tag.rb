class Tag < ActiveRecord::Base
  has_many :tagposts
  has_many :posts, :through => :tagposts

  validates :name, :presence => true
end
