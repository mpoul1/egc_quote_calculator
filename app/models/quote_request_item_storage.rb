class QuoteRequestItemStorage < ActiveRecord::Base
  belongs_to :quote_request_item_server
  has_one :egc_storage_type
end
