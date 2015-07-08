class Wallpaper < ActiveRecord::Base
  mount_uploader :image, WallpaperUploader
  validates :image, presence: { message: 'Agregar imagen' }
end
