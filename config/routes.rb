Sknaacp1166::Application.routes.draw do
  root 'pages#index'
  match '/home', to: 'pages#index', via: :get
  match '/send_message', to: 'pages#send_message', via: :post
end
