Rails.application.routes.draw do
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'plainpage#index'
   resources :employees
   resources :companies
   resources :motors
   resources :others
   resources :residences   
   resources :evaluations
  

end
