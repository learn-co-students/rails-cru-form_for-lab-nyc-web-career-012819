Rails.application.routes.draw do
  resources :artists, only: [:create, :destroy, :edit, :index, :new, :show, :update]
  resources :genres, only: [:create, :destroy, :edit, :index, :new, :show, :update]
  resources :songs, only: [:create, :destroy, :edit, :index, :new, :show, :update]
end
