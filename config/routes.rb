Chattdevs::Application.routes.draw do
  match 'auth/:provider/callback', :to => 'sessions#create', :via => [:get, :post]
  match 'auth/failure', :to => "users#index", :via => :get

  resources :users, :only => [:show, :destroy] do
    get 'page/:page', :action => :index, :on => :collection
  end
  resources :events, :only => [:index, :new, :create]
  resources :jobs, :only => [:index, :new, :create, :show]

  get 'signout', :to => 'sessions#destroy'
  root 'users#index'
end
