json.array!(@donations) do |donation|
  json.extract! donation, :id, :request, :artist_id, :artist_name, :artist_website, :artist_facebook, :artist_twitter, :artist_bandcamp, :artist_instagram, :artist_snapchat, :amount, :comment, :youtube_video_id, :youtube_error_code
  json.url donation_url(donation, format: :json)
end
