class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.text :description
      t.references :customer, index: true

      t.timestamps
    end
  end
end
