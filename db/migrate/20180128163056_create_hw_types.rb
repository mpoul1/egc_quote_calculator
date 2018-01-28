class CreateHwTypes < ActiveRecord::Migration
  def change
    create_table :hw_types do |t|
      t.string :name
      t.text :description
      t.references :egc_server_type, index: true

      t.timestamps
    end
  end
end
