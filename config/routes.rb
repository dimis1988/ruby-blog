Rails.application.routes.draw do

  root 'pages#index'
  resources :posts, param: :slug
end
