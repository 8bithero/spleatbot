json.array!(@tabs) do |tab|
  json.extract! tab, :id, :venue_id
  json.url tab_url(tab, format: :json)
end
