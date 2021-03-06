VoupeShort::Application.routes.draw do

  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :sessions

  match ":short" => "urls#goto"
  
  root :to => "home#index"

  namespace :admin do
    resources :sites
    resources :urls do
      member {get :clicks}
    end
    resources :clicks
  end

  namespace :api do
  	match ":site_uuid/urls" => "urls#index"
  	match ":site_uuid/urls/new" => "urls#new"
  end

end