json.array!(@groups) do |group|
  json.extract! group, :id, :code, :name
  json.url group_url(group, format: :json)
end
