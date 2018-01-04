Rails.application.routes.draw do

  devise_for :users,	path_names: {sign_in: "login", sign_out: "logout"},
  										controllers: {omniauth_callbacks: "omniauth_callbacks"}
  get '/secret', to: 'pages#secret', as: :secret
  root to: 'pages#index'

end
