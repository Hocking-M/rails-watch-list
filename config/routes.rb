Rails.application.routes.draw do
  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: [:destroy]

  resources :movies, only: [:index, :show] do
    resources :bookmarks, only: [:new, :create]
  end

  root to: 'lists#index'
end
