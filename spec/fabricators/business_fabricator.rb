Fabricator(:business) do
  name { Faker::Company.name }
  city { Faker::Address.city }
  state { Faker::Address.state }
end
