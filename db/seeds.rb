# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Allergen.create(
  id: 1,
  name: "卵"
)

Allergen.create(
  id: 2,
  name: "小麦"
)

Allergen.create(
  id: 3,
  name: "乳"
)

Allergen.create(
  id: 4,
  name: "蕎麦"
)

Allergen.create(
  id: 5,
  name: "落花生"
)

Allergen.create(
  id: 6,
  name: "カニ"
)

Allergen.create(
  id: 7,
  name: "エビ"
)

User.create(
  id: 1, 
  email: "hara_natsumi@example.com", 
  first_name: "原", 
  last_name: "なつみ", 
  password: "hara_natsumi", 
  image_path: open "#{Rails.root}/db/fixtures/image01.jpg",
  registration: true
)

AllergenUser.create(
  id: 1
  allergen_id: 1
  user_id: 1
)

)
