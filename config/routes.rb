Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'userparams/new'
  get 'userparams/show'
  get 'userparams/edit'
  devise_for :users
  root 'pages#ingex'
  get 'pages/about'
  get 'pages/contact_us'
  get 'pages/privacy_policy'
  resources :posts do
<<<<<<< HEAD
  
=======
>>>>>>> 633099324a3f4377ee6202bfd6a61570ad6f8560
    resources :comments
  end
 resources :userparams

<<<<<<< HEAD
 

=======
>>>>>>> 633099324a3f4377ee6202bfd6a61570ad6f8560
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
