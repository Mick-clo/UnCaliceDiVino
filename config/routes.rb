Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get 'set_locale', to: 'application#set_locale', as: 'set_locale'  # Ensure you have the 'as' option
  resources :wineries

  # Defines the root path route ("/")
  # root "posts#index"
  get "home", to: "pages#home"
  get "wineries", to: "wineries#index"
  get "wineries/:id", to: "wineries#show"
end
