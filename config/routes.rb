Rails.application.routes.draw do
  resources :notes
  resources :users, only: [:create]
  post 'login', to: "auth#create"
  post '/signup', to: 'users#create'
  get 'persist', to: "auth#show"
end
