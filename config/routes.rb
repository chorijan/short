VoupeShort::Application.routes.draw do

	match ":short" => "urls#goto"
  
  root :to => "home#index"

  namespace :admin do
    resources :sites do
    	resources :urls
    end
    # resources :urls
  end

end