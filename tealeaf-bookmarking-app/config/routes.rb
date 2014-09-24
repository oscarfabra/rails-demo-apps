HeavensyProject::Application.routes.draw do
  root to: "posts#index"
  
  resources :posts, only: [:show, :new, :create, :index] do
    resources :comments, only: [:create]
    resources :votes, only: [:create]
  end
  
  resources :users, only: [:create]
  
  resources :user_profile, only: [:show, :create, :edit, :update]
  
  get 'register', to: 'users#new', as: 'register'
  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  
end
