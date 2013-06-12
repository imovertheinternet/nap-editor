class CarrierImage < ActiveRecord::Base
  attr_accessible :description, :image, :title
  mount_uploader :mount_as => :image, ImagesUploader
end
