Rails.application.routes.draw do
  resources :authors, only: [:new, :show, :edit, :create, :update]
  resources :posts, only: [:new, :show, :edit, :create, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
