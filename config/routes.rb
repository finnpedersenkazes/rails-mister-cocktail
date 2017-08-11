Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktail_ingredient_relations

  resources :cocktails
  # get "/cocktails" => cocktails#index
  # get "/cocktails/:id" => cocktails#show
  # get "/cocktails/new" => cocktails#new
  # post "/cocktails" => cocktails#create
  # get "/cocktails/:id/edit" => cocktails#edit
  # patch "/cocktails/:id" => cocktails#update
  # delete "/cocktails/:id" => cocktails#destroy

  resources :ingredients
  # get "/ingredients" => ingredients#index
  # get "/ingredients/:id" => ingredients#show
  # get "/ingredients/new" => ingredients#new
  # post "/ingredients" => ingredients#create
  # get "/ingredients/:id/edit" => ingredients#edit
  # patch "/ingredients/:id" => ingredients#update
  # delete "/ingredients/:id" => ingredients#destroy
end
