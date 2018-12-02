Rails.application.routes.draw do
  get 'userparams/new'
  get 'userparams/show'
  get 'userparams/edit'
  devise_for :users
  root 'pages#ingex'
  get 'pages/about'
  get 'pages/contact_us'
  get 'pages/privacy_policy'
 resources :posts
 resources :userparams
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
