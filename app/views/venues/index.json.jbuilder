json.array!(@venues) do |venue|
  json.extract! venue, :id, :name, :account
  json.url venue_url(venue, format: :json)
end
