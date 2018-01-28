class CreateQuoteRequestItems < ActiveRecord::Migration
  def change
    create_table :quote_request_items do |t|
      t.float :pieces
      t.text :description

      t.timestamps
    end
  end
end
