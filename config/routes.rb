Rails.application.routes.draw do
  resources :articles
  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  resources :sections
  get 'welcome/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  resources :sessions

  get 'login' => 'sessions#create', as: :login

  get 'logout' => 'sessions#destroy', as: :logout

end
