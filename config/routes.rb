Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  resources :anime, defaults: { format: :json }

  # Routes CRUD
  get '/anime' => 'anime#index'
  get '/anime/:id' => 'anime#show'
  post '/anime' => 'anime#create'
  put '/anime/:id' => 'anime#update'
  delete '/anime/:id' => 'anime#destroy'
  
end
