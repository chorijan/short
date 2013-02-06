VoupeShort::Application.routes.draw do

	match ":short" => "urls#goto"
  
  root :to => "home#index"

  namespace :admin do
    resources :sites do
    	resources :urls
    end
    # resources :urls
  end

  namespace :api do
  	# resources :urls
  	match ":site_uuid/urls" => "urls#index"
  	match ":site_uuid/urls/new" => "urls#new"
  end

end