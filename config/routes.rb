Rails.application.routes.draw do
  get 'sailboats/my_products'


  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  root to: 'sailboats#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :sailboats
end
