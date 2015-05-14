json.array!(@timetables) do |timetable|
  json.extract! timetable, :id, :classroom
  json.url timetable_url(timetable, format: :json)
end
