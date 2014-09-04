json.array!(@site_infos) do |site_info|
  json.extract! site_info, :id, :main_text, :phone, :fax, :email, :address
  json.url site_info_url(site_info, format: :json)
end
