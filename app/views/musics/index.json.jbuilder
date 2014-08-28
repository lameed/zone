json.array!(@musics) do |music|
  json.extract! music, :id, :number, :title, :artist, :category, :language
  json.url music_url(music, format: :json)
end
