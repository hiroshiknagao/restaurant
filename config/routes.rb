Rails.application.routes.draw do
  get '/nice_restaurants', to: 'nice_restaurants#index', as: :nice_restaurants
  get '/nice_restaurants/:id', to: 'nice_restaurants#show', as: :nice_restaurant

end
