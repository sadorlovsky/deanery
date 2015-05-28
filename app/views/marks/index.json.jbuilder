json.array!(@marks) do |mark|
  json.extract! mark, :id
  json.url mark_url(mark, format: :json)
end
