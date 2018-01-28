class CreateQuoteRequestItemStorages < ActiveRecord::Migration
  def change
    create_table :quote_request_item_storages do |t|
      t.string :name
      t.text :description
      t.integer :capacity
      t.integer :backup_size
      t.references :quote_request_item_server, index: false

      t.timestamps
    end
  end
end
