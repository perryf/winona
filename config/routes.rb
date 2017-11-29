Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users

  root to: 'movies#index'

  resources :users do
    resources :lists
  end

  resources :movies do
    resources :groups

    collection do
      get '/search/:id' => 'movies#show_result', as: 'show_search_result'
    end
  end
end
