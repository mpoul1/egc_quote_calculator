class QuoteRequestItem < ActiveRecord::Base
  has_many :vendor_items
  has_many :quote_request_item_servers
end
