class Post < ActiveRecord::Base
has_and_belongs_to_many :users

#  belongs_to :user

  attr_accessible :description, :imageurl, :price, :product, :producturl, :sku, :postreview, :adminreview, :image, :productimage, :email, :remote_productimage_url
  mount_uploader :productimage, ProductimageUploader


scope :approved, where(:adminreview => true)
scope :pending,  where(:adminreview => false)
scope :noimage,  where(:imageurl => 'http://www.nitroapplianceparts.com/media/catalog/product/n/o/nophoto.gif')
scope :newest, order("created_at desc")

def previous_post
  self.class.first(:conditions => ["id < ?", id], :order => "id desc")
end


def next_post
  self.class.first(:conditions => ["id > ?", id], :order => "id asc")
end




end
