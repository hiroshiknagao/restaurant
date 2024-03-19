Rails.application.routes.draw do
  get '/nice_restaurants', to: 'nice_restaurants#index', as: :nice_restaurants
  get '/nice_restaurants/new', to: 'nice_restaurants#new', as: :new_nice_restaurant
  post '/nice_restaurants', to: 'nice_restaurants#create', as: :create_new_restaurant
  get '/nice_restaurants/:id', to: 'nice_restaurants#show', as: :nice_restaurant
end
