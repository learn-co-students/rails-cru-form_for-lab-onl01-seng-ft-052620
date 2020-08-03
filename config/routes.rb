Rails.application.routes.draw do
  resources :application 
  resources :artists
  resources :genres
  resources :songs
end
