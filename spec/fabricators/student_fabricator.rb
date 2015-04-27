Fabricator(:student) do
  first_name { Faker::Name.first_name }
  last_name { Faker::Name.first_name }
  middle_name "Захарыч"
end
