json.array!(@love_songs) do |love_song|
  json.extract! love_song, :id, :number, :title, :artist, :type, :language
  json.url love_song_url(love_song, format: :json)
end
