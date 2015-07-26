Rails.application.routes.draw do
  resources :posts
  resources :images, :path => :fotos
  resources :links
  resources :documents, :path => :documentos

  get 'admin/index'

  resources :wallpapers

  resources :users

  resources :articles, :path => :articulos

  resources :sections, :path => :secciones

  get 'welcome/index'

  get 'articulos/tags/:tag', to: 'articles#index', as: :tag

  root 'welcome#index'

  resources :sessions

  get 'documents/download'

  get 'login' => 'sessions#create', as: :login

  get 'logout' => 'sessions#destroy', as: :logout

end
