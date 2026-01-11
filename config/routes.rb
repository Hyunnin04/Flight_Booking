Rails.application.routes.draw do
  namespace :admin_auth do
    get "sessions/new"
    get "sessions/create"
    get "sessions/destroy"
  end
  namespace :admin do
    get "passengers/index"
    get "passengers/show"
    get "dashboard/index"
    get "bookings/index"
    get "bookings/show"
    get "flights/index"
    get "flights/new"
    get "flights/create"
    get "flights/edit"
    get "flights/update"
    get "flights/destroy"
  end
  get "bookings/new"
  get "bookings/review"
  get "bookings/create"
  get "flights/index"

   # Public
  resources :flights, only: [:index] do
    resources :bookings, only: [:new, :create, :show] # show = confirmation
  end
  
 # Admin area
 namespace :admin do
  root to: "dashboard#index" 
  resources :flights
  resources :bookings, only: [:index, :show]
  resources :passengers, only: [:index, :show]
end

# Admin Authentication
namespace :admin_auth do
  get    "login",  to: "sessions#new"
  post   "login",  to: "sessions#create"
  delete "logout", to: "sessions#destroy"
end


  # Home page
  root to: "flights#index"
end
