json.array!(@prv_categories) do |prv_category|
  json.extract! prv_category, :id, :name
  json.url prv_category_url(prv_category, format: :json)
end
