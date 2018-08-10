Rails.application.routes.draw do
  get 'boats/my_products'


  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  root to: 'boats#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :boats
end
