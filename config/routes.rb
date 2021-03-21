Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :decks, only: [:index, :show, :create, :update]
      resources :cards, only: [:index, :show, :create, :update]
    end
  end
end
