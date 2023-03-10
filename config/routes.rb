Rails.application.routes.draw do
  root 'users#new'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :pictures do
    collection do
      post :confirm
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
