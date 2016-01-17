json.array!(@gondolas) do |gondola|
  json.extract! gondola, :id, :plate, :last_location, :type
  json.url gondola_url(gondola, format: :json)
end
