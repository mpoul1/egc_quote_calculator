class CreateEgcStorageTypes < ActiveRecord::Migration
  def change
    create_table :egc_storage_types do |t|
      t.string :name
      t.text :description
      t.references :quote_request_item_storage, index: true

      t.timestamps
    end
  end
end
