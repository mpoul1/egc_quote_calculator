class CreateVendorItems < ActiveRecord::Migration
  def change
    create_table :vendor_items do |t|
      t.string :name
      t.float :purchased_price
      t.text :description
      t.references :vendor, index: true
      t.references :quote_request_item, index: true

      t.timestamps
    end
  end
end
