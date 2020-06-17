Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  [:authors, :posts].each do |route|
    resources route, only: [:show, :new, :edit, :create, :update]
  end
end
