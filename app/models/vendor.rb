class Vendor < ActiveRecord::Base
  validates_formatting_of :account_manager_email, using: :email
end
