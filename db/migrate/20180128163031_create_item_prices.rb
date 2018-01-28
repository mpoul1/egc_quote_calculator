class CreateItemPrices < ActiveRecord::Migration
  def change
    create_table :item_prices do |t|
      t.datetime :valid_from
      t.datetime :valid_to
      t.float :valid_price
      t.references :vendor_item, index: true

      t.timestamps
    end
  end
end
