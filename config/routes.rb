Rails.application.routes.draw do
  get 'villages/index'

  resources :courses
 

  devise_for :users , controllers: { sessions: 'users/sessions' }
  
  resources :employers 
  resources :jobs
  resources :courses
  resources :villages
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "villages#index"

end 