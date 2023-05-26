Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :lists
  # Defines the root path route ("/")
  # root "articles#index"

  # get 'lists', to: 'lists#index'
  # get 'lists/new', to: 'lists#new'
  # get 'lists/:id', to: 'lists#show'
  # get 'lists/:id/edit', to: 'lists#edit'
  # patch 'lists/:id', to: 'lists#update'
  # delete 'lists/:id', to: 'lists#destroy'

  # get 'lists/:id/bookmarks', to: 'bookmarks#index'
  # get 'lists/:id/bookmarks/new', to: 'bookmarks#new'
  # get 'lists/:id/bookmarks/:id', to: 'bookmarks#show'
  # get 'lists/:id/bookmarks/:id/edit', to: 'bookmarks#edit'
  # patch 'lists/:id/bookmarks/:id', to: 'bookmarks#update'
  # delete 'lists/:id/bookmarks/:id', to: 'bookmarks#destroy'

  # get 'lists/:id/bookmarks/:id/movies', to: 'movies#index'

  resources :lists do
    resources :bookmarks
  end
end
