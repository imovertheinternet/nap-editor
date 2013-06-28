ActiveAdmin.register Post do

index do
column :id
column :product
column :description
column :price
column :producturl
column :sku
column :updated_at
column :adminreview
column :email
end

#column :email_id
#column :updated_at
#column "this is a test", :id
#column :email
#column :users
#end

scope :approved
scope :pending
  
end
