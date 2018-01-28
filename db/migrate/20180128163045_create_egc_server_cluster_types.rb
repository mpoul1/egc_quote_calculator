class CreateEgcServerClusterTypes < ActiveRecord::Migration
  def change
    create_table :egc_server_cluster_types do |t|
      t.string :name
      t.text :description
      t.references :quote_request_item_server, index: true
      t.references :egc_server_type, index: true

      t.timestamps
    end
  end
end
