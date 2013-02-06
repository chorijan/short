VoupeShort::Application.routes.draw do

	match ":short" => "urls#goto"
  
  root :to => "home#index"

  namespace :admin do
    resources :sites
  end

end