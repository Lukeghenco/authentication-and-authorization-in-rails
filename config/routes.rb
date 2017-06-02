Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "welcome#home"

  get '/awesome_things', to: 'welcome#awesome_things', as: 'awesome_things'
  get '/do_super_user_things', to: 'welcome#do_super_user_things', as: 'do_super_user_things'
  get '/do_owner_things', to: 'welcome#do_owner_things', as: 'do_owner_things'
  
  resources :registrations, only: [:new, :create]
  resources :users, only: [:index, :show, :destroy]

  put '/users/:id/change_account_role', to: 'users#change_account_role', as: 'change_account_role'

  get '/sessions/new', to: 'sessions#new', as: 'new_session'
  post '/sessions', to: 'sessions#create', as: 'sessions'
  delete '/sessions', to: 'sessions#destroy', as: 'session'
end
