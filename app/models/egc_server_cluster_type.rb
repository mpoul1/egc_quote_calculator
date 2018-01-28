class EgcServerClusterType < ActiveRecord::Base
  belongs_to :quote_request_item_server
  belongs_to :egc_server_type
end
