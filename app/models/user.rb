class User < ActiveRecord::Base
	authenticates_with_sorcery!
  validates :password, :username, :full_name, presence: { message: 'Completa este campo' }
  validates :password, confirmation: { message: 'Contraseñas no coinciden' }
end
