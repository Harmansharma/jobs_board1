Rails.application.routes.draw do
  get 'profiles/index'
  get 'villages/index'
  get 'sign_up/profile'
  resources :courses
 

  devise_for :users , controllers: { sessions: 'users/sessions',  omniauth_callbacks: 'users/omniauth_callbacks' }
 
devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'     
end

    
  
  resources :employers 
  resources :jobs
  resources :profiles
  resources :courses
  resources :villages
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "jobs#index"

end 