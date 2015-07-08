json.array!(@wallpapers) do |wallpaper|
  json.extract! wallpaper, :id, :title, :content, :image
  json.url wallpaper_url(wallpaper, format: :json)
end
