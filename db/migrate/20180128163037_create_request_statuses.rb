class CreateRequestStatuses < ActiveRecord::Migration
  def change
    create_table :request_statuses do |t|
      t.string :name
      t.text :description
      t.references :quote_request, index: true

      t.timestamps
    end
  end
end
