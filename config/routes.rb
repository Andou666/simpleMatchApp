Rails.application.routes.draw do
  # devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :users do
    resource :profile
  end  
  get 'about', to: 'pages#about'

  resources :contacts, only: :create
  get 'contact-us', to: 'contacts#new', as: 'new_contact'


end
