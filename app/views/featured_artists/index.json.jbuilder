json.array!(@featured_artists) do |featured_artist|
  json.extract! featured_artist, :id
  json.url featured_artist_url(featured_artist, format: :json)
end
