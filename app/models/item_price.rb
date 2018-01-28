class ItemPrice < ActiveRecord::Base
  belongs_to :vendor_item
  has_one :item_price_type
end
