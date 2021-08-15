Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # verb "url", to: "controller#action"

  # A visitor can see the list of all restaurants
  GET 'restaurants', to: "restaurants#index"

  # A visitor can add a new restaurant, and be redirected to the show view of that new restaurant.
  GET "restaurants/new", to: "restaurants#new"
  POST "restaurants", to: "restaurants#create"

  # A visitor can see the details of a restaurant, with all the reviews related to the restaurant.
  GET "restaurants/:id", to: "restaurants#show"

  # A visitor can add a new review to a restaurant
  GET "restaurants/38/reviews/new"
  POST "restaurants/38/reviews"
end
