json.array!(@prv_items) do |prv_item|
  json.extract! prv_item, :id, :title, :category_id, :description
  json.url prv_item_url(prv_item, format: :json)
end
