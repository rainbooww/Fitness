Rails.application.routes.draw do
  devise_for :users
  resources :comments
  resources :categories
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "blogs#index"
  get 'user_profile' => 'blogs#user_profile'
end
