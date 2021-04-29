Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Add CRUD routing
  # See all restaurants
  # See details about one restaurant
  # Create a restaurant
  # Update a restaurant
  # Destroy a restaurant
  #Routing for time slot new and create
  # shallow nesting for destroy

  resources :restaurants do
    resources :timeslots, only: [:new, :create]
  end

  resources :timeslots, only: [:destroy]
end
