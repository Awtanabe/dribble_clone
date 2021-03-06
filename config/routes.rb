Rails.application.routes.draw do
  resources :shots do 
    resources :comments
    member do 
  		put 'like', to: "shots#like"
  		put 'unlike', to: "shots#unlike"
  	end
  end

  get 'comments/create'
  get 'comments/destroy'
  devise_for :users, { registrations: 'registrations' }
  root "shots#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
