# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
City.destroy_all
Housing.destroy_all

me = User.create(
  email: 'tutu@yopmail.com',
  phone_number: '0655255545',
  description: "Ceci est une description aleatoire devant atteindre le nombre d
  e 140 caractères d'apres mes souvenirs, mais de toute maniere, on a surement deja atteint cette longueur, en tout cas je le souhaite ardement, comme vous pouvez l
  e constater, cher lecteur curieux ..."
  )

bdx = City.create(
  name: 'Bordeaux',
  zip_code: '33000'
  )

  h = Housing.create(
    user: me,
    city: bdx,
    available_beds: 2,
    price: 24,
    description: "Ceci est une description aleatoire devant atteindre le nombre d
    e 140 caractères d'apres mes souvenirs, mais de toute maniere, on a surement deja atteint cette longueur, en tout cas je le souhaite ardement, comme vous pouvez l
    e constater, cher lecteur curieux ...",
    welcome_message: "We are glad to welcome you."
    )
