Chattdevs::Application.routes.draw do
  match 'auth/:provider/callback', :to => 'sessions#create', :via => [:get, :post]
  root 'users#index'
end
