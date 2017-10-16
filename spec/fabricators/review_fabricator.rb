Fabricator(:review) do
  title { Faker::Lorem.words(3) }
  content { Faker::Lorem.paragraphs(1) }
  user { Faker::Name.name }
end
