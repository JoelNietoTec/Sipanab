class Image < ActiveRecord::Base
  mount_uploader :picture, ImageUploader
  validates :picture, presence: { message: 'Agregar imagen' }
end
