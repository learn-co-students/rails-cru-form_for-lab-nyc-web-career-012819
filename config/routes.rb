Rails.application.routes.draw do
  resources :artists, only: %i[index new create show edit update]
  resources :genres, only: %i[index new create show edit update]
  resources :songs, only: %i[index new create show edit update]
end
