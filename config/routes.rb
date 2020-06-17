Rails.application.routes.draw do
  resources :authors, except: [ :index, :delete ]
  resources :posts, except: [ :index, :delete ]
end
