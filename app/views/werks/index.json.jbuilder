json.array!(@werks) do |werk|
  json.extract! werk, :id, :name
  json.url werk_url(werk, format: :json)
end
