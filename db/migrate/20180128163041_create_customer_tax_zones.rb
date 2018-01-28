class CreateCustomerTaxZones < ActiveRecord::Migration
  def change
    create_table :customer_tax_zones do |t|
      t.string :name
      t.text :description
      t.float :tax
      t.references :customer, index: true

      t.timestamps
    end
  end
end
