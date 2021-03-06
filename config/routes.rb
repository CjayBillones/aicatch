Rails.application.routes.draw do

  root 'static_pages#live'

  get '/live' => 'static_pages#live'
  get '/traffic_violations' => 'static_pages#traffic_violations'
  #get '/reports' => 'static_pages#reports'
  get '/single_live' => 'static_pages#single_live'

  resources :captured_violators
  post '/download_evidences' => 'captured_violators#download_evidences'
  post '/encode_license_plate' => 'captured_violators#encode_license_plate'

  resources :users
  get '/create_user' => 'users#new'
  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  resources :offenses, only: [:destroy]
  get '/reports' => 'offenses#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
