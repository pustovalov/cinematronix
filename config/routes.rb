Rails.application.routes.draw do
  # get 'landing/index'
  root to: 'landing#index'

  get 'movies', to: 'movies#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
