Rails.application.routes.draw do
  devise_for :users 
  resources :posts do
   resources :comments
  end
  resources :users do
    member do
      get 'profile'
    end
   end
root 'posts#index'
  
end