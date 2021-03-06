Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users do 
    resources :photos
  end

  resources :photos

  post '/logout', to: 'sessions#destroy'

  post '/login', to: 'sessions#create'

  post '/delete-account', to: 'users#destroy'

end