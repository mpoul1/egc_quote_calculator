class CreateQuoteRequestItemServers < ActiveRecord::Migration
  def change
    create_table :quote_request_item_servers do |t|
      t.float :required_cpu
      t.integer :required_ram
      t.references :quote_request_item, index: true

      t.timestamps
    end
  end
end
