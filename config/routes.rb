Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'home#show' 

  resources :users, only: [:show,:edit,:update] 
  resources :posts, only: [:new,:create] 
end
