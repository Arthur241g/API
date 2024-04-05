Rails.application.routes.draw do
  devise_for :users
  resources :animes
  get '/api-documentation', to: redirect('https://arthur241g.github.io/doc_API/api-documentation.html')
  get '/favicon.ico', to: redirect('https://arthur241g.github.io/doc_API/api-documentation.html')
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end