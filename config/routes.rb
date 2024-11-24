Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "home#index"

  resources :teams do
    # member do
      get "/search", to: "teams#search"
    # end
  end
  resources :users
end
