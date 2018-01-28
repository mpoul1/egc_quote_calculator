class Customer < ActiveRecord::Base
  belongs_to :customer
  has_many :customers
  has_one :customer_tax_zone
  acts_as_votable 
end
