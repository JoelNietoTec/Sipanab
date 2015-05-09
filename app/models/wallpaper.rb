class Wallpaper < ActiveRecord::Base
  mount_uploader :image, WallpaperUploader
end
