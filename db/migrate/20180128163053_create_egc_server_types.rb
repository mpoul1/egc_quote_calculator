class CreateEgcServerTypes < ActiveRecord::Migration
  def change
    create_table :egc_server_types do |t|
      t.string :name
      t.text :description
      t.references :quote_request_item_server, index: true

      t.timestamps
    end
  end
end
