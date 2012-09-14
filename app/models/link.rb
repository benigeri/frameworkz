class Link < ActiveRecord::Base
  attr_accessible :title, :url
  belongs_to :user
   # validates :name, :uniqueness => true
  has_many :comments
  has_many :votes
end
