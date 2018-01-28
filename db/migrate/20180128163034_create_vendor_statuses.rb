class CreateVendorStatuses < ActiveRecord::Migration
  def change
    create_table :vendor_statuses do |t|
      t.string :name
      t.text :description
      t.boolean :active

      t.timestamps
    end
  end
end
