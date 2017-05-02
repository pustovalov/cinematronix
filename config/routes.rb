Rails.application.routes.draw do
  root to: 'landing#index'

  namespace :api do
    resources :movies
  end

  match "*path", to: "landing#index", via: :all
end
