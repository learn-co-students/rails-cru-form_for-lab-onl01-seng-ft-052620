Rails.application.routes.draw do
  resources :songs, only: [:index, :show, :update, :create, :edit, :new]
  resources :genres, only: [:show, :update, :create, :edit, :new]
  resources :artists, only: [:show, :update, :create, :edit, :new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
