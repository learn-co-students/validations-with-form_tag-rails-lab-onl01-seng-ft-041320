Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :authors, only: [:index, :new, :create, :show, :update, :edit]
  resources :posts, only: [:index, :new, :create, :show, :update, :edit]
end
