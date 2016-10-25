# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

artist_1 = Artist.create(name: 'The Black Dahlia Murder')         # request
artist_2 = Artist.create(name: 'Aegaeon')                         # request
artist_3 = Artist.create(name: 'Fallujah')                        # request
artist_4 = Artist.create(name: 'Crossing the Rubicon')            # donation
artist_5 = Artist.create(name: 'The Black Queen')                 # request
artist_6 = Artist.create(name: 'The Approach and The Execution')  # donation

Donation.create(artist: artist_1, artist_name: artist_1.name, request: true)
Donation.create(artist: artist_2, artist_name: artist_2.name, request: true, youtube_video_id: 'Tc8aid6N5YY', created_at: Time.new(2016, 5, 23), comment: 'Thank you for playing an epic set in front of 10 people.')
Donation.create(artist: artist_3, artist_name: artist_3.name, request: true, youtube_video_id: 'znjLSW8kfBM', created_at: Time.new(2016, 5, 27, 19), comment: "You don't want to miss them on tour with The Black Dahlia Murder. Easily one of the best shows of the year.")
Donation.create(artist: artist_4, artist_name: artist_4.name, request: false, amount: 10, youtube_video_id: 'uJTLskJmitE', created_at: Time.new(2016, 5, 30, 13), comment: 'Crossing the Rubicon is textural and deep in its sonic sphere. Always tip-toeing on the edge of fantasy and surrealism, the creative source is always journey-like. There are conceptual ideas and a vision that kind of melded together inside the body of a progressive-metal sound.')
Donation.create(artist: artist_5, artist_name: artist_5.name, request: true, youtube_video_id: 'kj9-QKZVW54')
Donation.create(artist: artist_6, artist_name: artist_6.name, request: false, amount: 3)
