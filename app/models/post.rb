class Post < ActiveRecord::Base
  attr_accessible :description, :imageurl, :price, :product, :producturl, :sku, :postreview, :adminreview

scope :approved, where(:adminreview => true)
scope :pending,  where(:adminreview => false)
scope :newest, order("created_at desc")


end
