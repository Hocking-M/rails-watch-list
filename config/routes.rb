Rails.application.routes.draw do
  resources :lists do
    resources :bookmarks
  end

  resources :bookmarks, only: [:destroy]

  resources :movies do
    resources :bookmarks, only: [:new, :create]
  end

  root to: 'lists#index'
end
