class VendorItem < ActiveRecord::Base
  belongs_to :vendor
  belongs_to :quote_request_item
end
