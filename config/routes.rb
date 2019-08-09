Rails.application.routes.draw do
    resources :cocktails, only: [ :index, :new, :create, :show, :destroy] do
      resources :doses, only: [:new, :create]
  end

  resources :doses, only: :destroy
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
