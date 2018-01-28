class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :account_manager_email
      t.text :description
      t.boolean :status

      t.timestamps
    end
  end
end
