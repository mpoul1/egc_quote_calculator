class CreateVendorItemTypes < ActiveRecord::Migration
  def change
    create_table :vendor_item_types do |t|
      t.string :name
      t.text :description
      t.references :vendor_item, index: true
      t.boolean :active
      t.references :quote_request_item, index: true

      t.timestamps
    end
  end
end
