VoupeShort::Application.routes.draw do
  
  root :to => "home#index"

  namespace :admin do
    resources :sites
  end

end