class CreateQuoteRequests < ActiveRecord::Migration
  def change
    create_table :quote_requests do |t|
      t.string :project
      t.references :customer, index: true
      t.datetime :requested_at
      t.text :description

      t.timestamps
    end
  end
end
