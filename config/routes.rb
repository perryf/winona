Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users

  root to: 'movies#index'

  resources :users do
    resources :lists
  end

  # define custom route /search get request (test with get to see if you get hello world)
  # build out search form on index.html.erb submitting to search action
  # inside search action do search call, pulling term from form params

  resources :movies do
    resources :groups

    collection do
      get 'search'
    end
  end
end
