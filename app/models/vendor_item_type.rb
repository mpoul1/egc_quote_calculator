class VendorItemType < ActiveRecord::Base
  belongs_to :vendor_item
  belongs_to :quote_request_item
end
