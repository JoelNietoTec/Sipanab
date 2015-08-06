class User < ActiveRecord::Base
	authenticates_with_sorcery!
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: { :with => VALID_EMAIL_REGEX , message: "Formato de email inválido" }
  validates :email, :full_name, presence: { message: 'Completa este campo' }
  validates :password, confirmation: { message: 'Contraseñas no coinciden' }
  validates :password, presence: { message: 'Completa este campo'}, on: :create

end
