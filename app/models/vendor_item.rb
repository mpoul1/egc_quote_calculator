class VendorItem < ActiveRecord::Base
  belongs_to :vendor
  belongs_to :quote_request_item
  has_one :vendor_item_type
end
