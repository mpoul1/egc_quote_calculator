class CreateItemPriceTypes < ActiveRecord::Migration
  def change
    create_table :item_price_types do |t|
      t.string :name
      t.text :description
      t.boolean :active
      t.references :item_price, index: true

      t.timestamps
    end
  end
end
