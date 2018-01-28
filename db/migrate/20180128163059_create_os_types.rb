class CreateOsTypes < ActiveRecord::Migration
  def change
    create_table :os_types do |t|
      t.string :name
      t.text :description
      t.references :egc_server_type, index: true

      t.timestamps
    end
  end
end
