Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :cocktails do
    resources :doses,  only: [ :create, :destroy]
    resources :reviews, only: [:create]
  end

  #delete "/cocktails/:cocktail_id/doses/:id", to: "doses#destroy", as: "test"

  #get "/cocktails/:cocktail_id", to: "cocktails#show", as: "new_cocktail_dose"
end
