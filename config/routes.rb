Rails.application.routes.draw do
  devise_for :users
  get "up" => "rails/health#show", as: :rails_health_check

  # Routing
  root to: "pages#home"

  get "about", to: "pages#about"

  resources :posts, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    member do
      patch :toggle_published
    end
     resources :blocks, only: [:create, :update, :destroy]
  end

end
