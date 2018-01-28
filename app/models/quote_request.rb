class QuoteRequest < ActiveRecord::Base
  belongs_to :customer
  has_one :request_status
end
