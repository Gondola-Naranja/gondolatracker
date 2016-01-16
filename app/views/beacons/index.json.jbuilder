json.array!(@beacons) do |beacon|
  json.extract! beacon, :id, :disance, :hex_id
  json.url beacon_url(beacon, format: :json)
end
