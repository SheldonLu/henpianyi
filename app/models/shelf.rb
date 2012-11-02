#encoding: utf-8
class Shelf < ActiveRecord::Base
  attr_accessible :category_id, :description, :link_to, :old_price, :pic, :position, :price, :small_title, :state, :title
  belongs_to :category
  validates :category_id ,:link_to ,:old_price,:pic, :position ,:price,:state, :title,:presence => true
  validates :old_price , :price , :position , :numericality => true
  mount_uploader :pic , GoodPicUploader
end
