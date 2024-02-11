Rails.application.routes.draw do

  namespace :admin do 
    root 'pages#index'
    resources :users
    resources :posts, param: :slug do
      resources :comments
    end
    get 'post_categories/:slug/related_posts', to: 'post_categories#related_posts', as: 'post_categories_related_posts'
    resources :post_categories, param: :slug
  end
  
  devise_for :users
  resources :users
  root 'pages#index'
  resources :posts, param: :slug do
    resources :comments
  end
  get 'post_categories/:slug/related_posts', to: 'post_categories#related_posts', as: 'post_categories_related_posts'
  resources :post_categories, param: :slug
end
