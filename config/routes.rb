Chattdevs::Application.routes.draw do
  match 'auth/:provider/callback', :to => 'sessions#create', :via => [:get, :post]

  resources :users, :only => [:show]
  root 'users#index'
end
