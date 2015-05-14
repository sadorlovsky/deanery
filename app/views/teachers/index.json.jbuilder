json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :first_name, :last_name, :middle_name, :birth_date, :gender, :cathedra
  json.url teacher_url(teacher, format: :json)
end
