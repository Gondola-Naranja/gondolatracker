json.array!(@gondollas) do |gondolla|
  json.extract! gondolla, :id, :plate, :last_location, :type
  json.url gondolla_url(gondolla, format: :json)
end
