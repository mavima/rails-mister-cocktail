Rails.application.routes.draw do
    root to: 'cocktails#index'
    resources :cocktails, only: [ :index, :new, :create, :show, :destroy, :edit, :update] do
      resources :doses, only: [:new, :create, :edit, :update]
      resources :ingredient, only: [:new, :create]
      resources :reviews, only: [:new, :create]

  end

  resources :doses, only: :destroy
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
