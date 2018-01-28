class EgcServerType < ActiveRecord::Base
  belongs_to :quote_request_item_server
  has_one :hw_type
  has_one :os_type
end
