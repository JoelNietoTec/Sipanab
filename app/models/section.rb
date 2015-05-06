class Section < ActiveRecord::Base
  include Bootsy::Container
  extend FriendlyId
  friendly_id :name, use: :slugged
  validates :name, uniqueness: { message: 'Sección ya creada' }
end
