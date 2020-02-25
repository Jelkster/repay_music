# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

artist_1 = Artist.create(name: 'Aegaeon')                         # request
artist_2 = Artist.create(name: 'Crossing the Rubicon')            # donation
artist_3 = Artist.create(name: 'The Skints')                      # request
artist_4 = Artist.create(name: 'Spiritbox')                       # request
artist_5 = Artist.create(name: 'The Black Queen')                 # request
artist_6 = Artist.create(name: 'Til Death')                       # donation

Donation.create(artist: artist_1, artist_name: artist_1.name, request: true)
Donation.create(artist: artist_2, artist_name: artist_2.name, request: false, amount: 10, youtube_video_id: 'uJTLskJmitE', created_at: Time.new(2016, 5, 30, 13).utc, comment: 'Crossing the Rubicon is textural and deep in its sonic sphere. Always tip-toeing on the edge of fantasy and surrealism, the creative source is always journey-like. There are conceptual ideas and a vision that kind of melded together inside the body of a progressive-metal sound.')
Donation.create(artist: artist_3, artist_name: artist_3.name, request: true, youtube_video_id: 'HydbI0SvSnM', created_at: Time.new(2017, 11, 11, 15).utc, comment: "In this free country...")
Donation.create(artist: artist_4, artist_name: artist_4.name, request: true, youtube_video_id: 'kIrfG_TBtUo', created_at: Time.new(2017, 11, 11, 16).utc, comment: "Please release me, I'm tired.")
Donation.create(artist: artist_5, artist_name: artist_5.name, request: true, youtube_video_id: 'kj9-QKZVW54')
Donation.create(artist: artist_6, artist_name: artist_6.name, request: false, amount: 3)
