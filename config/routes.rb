Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # users can only create a new user, see that user, and see other users
  # users can't edit or delete other user information
  resources :users, only: [:create, :show, :index]
end
