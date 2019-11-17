Rails.application.routes.draw do

  resources :shots
  devise_for :users, { registrations: 'registrations' }
  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
