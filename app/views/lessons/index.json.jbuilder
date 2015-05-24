json.array!(@lessons) do |lesson|
  json.extract! lesson, :id, :classroom
  json.url lesson_url(lesson, format: :json)
end
