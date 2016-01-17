json.array!(@beacons) do |beacon|
  json.extract! beacon, :id, :distance, :hex_id
  json.url beacon_url(beacon, format: :json)
end
