Rails.application.routes.draw do

  root 'static_pages#live'

  get '/live' => 'static_pages#live'
  get '/traffic_violations' => 'static_pages#traffic_violations'
  get '/reports' => 'static_pages#reports'
  get '/live-single-view' => 'static_pages#single_live'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
