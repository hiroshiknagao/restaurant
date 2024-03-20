Rails.application.routes.draw do
  resources :nice_restaurants do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]
end


# collection do
  # get :top
# end
# member do
  # get :chef
# end
