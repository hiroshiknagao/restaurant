Rails.application.routes.draw do
 resources :nice_restaurants do
  collection do
    get :top
  end
  member do
  get :chef
 end
 #get '/nice_restaurants/id/chef', to: 'nice_restaurants#chef', as: :chef_nice_restaurants
end
end
