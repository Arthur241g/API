Rails.application.routes.draw do
  devise_for :users
  resources :animes
  get '/api-documentation', to: redirect('https://arthur241g.github.io/doc_API/api-documentation.html')
  get '/favicon.ico', to: redirect('https://arthur241g.github.io/doc_API/api-documentation.html')
end