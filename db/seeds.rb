# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Donation.create([
  {artist_name: 'The Black Dahlia Murder', request: false, amount: 5},
  {artist_name: 'Aegaeon', request: true},
  {artist_name: 'Fallujah', request: true},
  {artist_name: 'Crossing the Rubicon', request: true},
  {artist_name: 'The Fine Constant', request: true},
  {artist_name: 'The Approach and The Execution', request: true}
])
