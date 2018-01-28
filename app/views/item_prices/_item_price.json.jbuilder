json.extract! item_price, :id, :valid_from, :valid_to, :valid_price, :vendor_item_id, :created_at, :updated_at
json.url item_price_url(item_price, format: :json)
