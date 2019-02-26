Rails.application.routes.draw do

  resources :artists, only: [:index, :show, :new, :create, :edit, :update]

  # get 'artists/', to: 'artists#index'
  # get 'artists/new', to: 'artists#new', as: 'new_artist'
  # post 'artists', to: 'artists#create'
  # get 'artists/:id', to: 'artists#show', as: 'artist'
  # get 'artists/:id/edit', to: 'artists#edit', as: 'edit_artist'
  # patch 'artists/:id', to: 'artists#update'

 resources :genres, only: [:index, :show, :new, :create, :edit, :update]

  # get 'genres', to: 'genres#index'
  # get 'genres/new', to: 'genres#new', as: 'new_genre'
  # post 'genres', to: 'genres#create'
  # get 'genres/:id', to: 'genres#show', as: 'genre'
  # get 'genres/:id/edit', to: 'genres#edit', as: 'edit_genre'
  # patch 'genres/:id', to: 'genres#update'

  get 'songs', to: 'songs#index'
  get 'songs/new', to: 'songs#new', as: 'new_song'
  post 'songs', to: 'songs#create'
  get 'songs/:id', to: 'songs#show', as: 'song'
  get 'songs/:id/edit', to: 'songs#edit', as: 'edit_song'
  patch 'songs/:id', to: 'songs#update'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
end
