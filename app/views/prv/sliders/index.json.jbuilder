json.array!(@sliders) do |slider|
  json.extract! slider, :id, :title, :is_active
  json.url slider_url(slider, format: :json)
end
