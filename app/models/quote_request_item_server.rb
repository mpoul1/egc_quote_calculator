class QuoteRequestItemServer < ActiveRecord::Base
  belongs_to :quote_request_item
  has_one :egc_server_type
  has_many :quote_request_item_storages
end
