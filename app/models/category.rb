class Category < ActiveRecord::Base
  attr_accessible :mark, :name
  validates :name,:mark , :uniqueness=>true, :presence=>true
  has_many :shelves
end
