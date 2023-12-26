Rails.application.routes.draw do

  root 'pages#index'
  resources :posts, param: :slug
  get 'post_categories/:slug/related_posts', to: 'post_categories#related_posts', as: 'post_categories_related_posts'
  resources :post_categories, param: :slug
end
