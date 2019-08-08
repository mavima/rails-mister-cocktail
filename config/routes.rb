Rails.application.routes.draw do
    resources :cocktails, only: [ :index, :new, :create, :show ] do
      resources :doses, only: [:index, :new, :create, :show, :destroy ]
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
