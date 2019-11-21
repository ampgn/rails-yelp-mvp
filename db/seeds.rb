# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Le China',
    address:      '50 Rue de Charenton, 75012 Paris',
    phone_number: '01 43 46 08 09',
    category:     'chinese'
  },
  {
    name:         'Villa Ferretti (Barrière Judaïque)',
    address:      '102 Boulevard du Président Wilson, 33000',
    phone_number: '05 35 54 51 51',
    category:     'italian'
  },
  {
    name:         'Okaasan',
    address:      '9 Rue des Trois Rois, 13006 Marseille',
    phone_number: '06 65 75 56 22',
    category:     'japanese'
  },
  {
    name:         'Two Stories',
    address:      '72 Quai de Jemmapes, 75010 Paris',
    phone_number: '01 53 16 17 88',
    category:     'french'
  },
  {
    name:         'Moule Frite',
    address:      'Belgique Loisirs, Rue de Namur, Bruxelles, Belgique',
    phone_number: '04 53 16 17 88',
    category:     'belgian'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
