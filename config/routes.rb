Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   #root "mobi#index"

  resources :mobile_food do
    get :name, on: :collection
    get :expired_permits, on: :collection
    get :address, on: :collection
    get :mobilefoodnew, on: :collection
    get :nearest, on: :collection
  end   
end
