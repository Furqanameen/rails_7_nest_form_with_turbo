json.extract! live_stream, :id, :title, :start_time, :start_date, :live_stream_product, :created_at, :updated_at
json.url live_stream_url(live_stream, format: :json)
