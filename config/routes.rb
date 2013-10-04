Sknaacp1166::Application.routes.draw do

  root 'pages#index'

  match '/home', to: 'pages#index', via: :get
end
