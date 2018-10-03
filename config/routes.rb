Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  get 'static_pages/help'
  root 'movies#index'
  get 'watchlists/create'
  get 'watchlists/destroy'
  devise_for :users
  devise_scope :user do 
    get "/users/sign_out" => "devise/sessions#destroy" 
  end
  
  resources :movies
  #resources :users, only: [:show]
  resources :users, only: [:show] do
    member do
      get :watched, :watchlist
    end
  end

  get 'help' ,to: "static_pages#help"

  post '/watches' , to: "watches#create" 
  delete 'watches', to: "watches#destroy"
  resources :watches, only: [:create, :destroy]
  resources :watchlists, only: [:create, :destroy]
  resources :reviews, only: [:create, :destroy]
end
