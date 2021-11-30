Rails.application.routes.draw do
  resources :auth, only: %i[create]
  resources :user, only: %i[create show]
  resources :contact
  resources :phonenumber, only: %i[create update destroy]
  
end
