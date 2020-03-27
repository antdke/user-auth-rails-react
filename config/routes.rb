Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # routes for actions in sessions controller
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'

  # users can only create a new user, see that user, and see other users
  # users can't edit or delete other user information
  resources :users, only: [:create, :show, :index]
end
