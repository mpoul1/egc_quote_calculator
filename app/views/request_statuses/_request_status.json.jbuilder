json.extract! request_status, :id, :name, :description, :quote_request_id, :created_at, :updated_at
json.url request_status_url(request_status, format: :json)
