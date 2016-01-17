json.array!(@beacons) do |beacon|
  json.extract! beacon, :id, :distance, :uuid
  json.url beacon_url(beacon, format: :json)
end
