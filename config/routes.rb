Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  # Routing
  root to: "pages#home"

  get "about", to: "pages#about"

  resources :posts, only: [:index, :show, :new]
end
