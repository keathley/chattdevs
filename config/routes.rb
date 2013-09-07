Chattdevs::Application.routes.draw do
  match 'auth/:provider/callback', :to => 'sessions#create', :via => [:get, :post]
  resources :users, :only => [:show, :destroy]

  get 'signout', :to => 'sessions#destroy'
  root 'users#index'
end
