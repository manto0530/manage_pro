Rails.application.routes.draw do

  resources :projects do
    resources :tasks
    get '/members', to: 'members#index', as: 'members'
    post '/members', to: 'members#create'
    get '/members/new', to: 'members#new', as: 'new_member'
  end
  devise_for :users
  get 'product_home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'product_home#index'
end
