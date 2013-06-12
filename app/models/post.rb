class Post < ActiveRecord::Base
  attr_accessible :description, :imageurl, :price, :product, :producturl, :sku, :postreview, :adminreview, :image, :productimage
  mount_uploader :productimage, ProductimageUploader

scope :approved, where(:adminreview => true)
scope :pending,  where(:adminreview => false)
scope :noimage,  where(:imageurl => 'http://www.nitroapplianceparts.com/media/catalog/product/n/o/nophoto.gif')
scope :newest, order("created_at desc")
end
