Sknaacp1166::Application.routes.draw do
  devise_for :users
  get 'home/', to: 'pages#index'
  post '/send_message', to: 'pages#send_message'
  resources :posts
  root 'pages#index'
end
