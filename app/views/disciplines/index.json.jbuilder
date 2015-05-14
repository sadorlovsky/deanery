json.array!(@disciplines) do |discipline|
  json.extract! discipline, :id, :title, :description
  json.url discipline_url(discipline, format: :json)
end
