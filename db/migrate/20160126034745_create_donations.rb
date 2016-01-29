class CreateDonations < ActiveRecord::Migration[5.0]
  def change
    create_table :donations do |t|
      t.boolean :request
      t.integer :artist_id
      t.string :artist_name
      t.string :artist_website
      t.string :artist_facebook
      t.string :artist_twitter
      t.string :artist_bandcamp
      t.string :artist_instagram
      t.string :artist_snapchat
      t.decimal :amount
      t.text :comment
      t.string :youtube_video_id
      t.integer :youtube_error_code

      t.timestamps
    end
    add_index :donations, :artist_id
  end
end
