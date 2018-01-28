json.extract! quote_request, :id, :project, :customer_id, :requested_at, :description, :created_at, :updated_at
json.url quote_request_url(quote_request, format: :json)
