class Customer < ActiveRecord::Base
  belongs_to :customer
  has_many :customers
end
