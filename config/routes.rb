Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post '/users', to: 'users#create'
  post '/login', to: 'auth#create'
  post '/photoupload', to: 'photos#create'
  post '/newcomment', to: 'comments#create'
  get '/users/me', to: 'users#me'
  get 'welcome', to: 'application#welcome'
  post '/signup', to: 'users#new'
  patch '/photos', to: 'photos#update'
  resources :users, :photos, :comments
end
