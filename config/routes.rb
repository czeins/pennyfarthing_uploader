Rails.application.routes.draw do

  get 'welcome/index'

  root 'sessions#new'

  get '/logout' => 'sessions#destroy'

  resources :sessions, only: [:new, :create, :destroy]
  resources :stories, except: [:index]
  resources :users, only: [:new, :create, :show, :edit, :update, :destroy]

    namespace :api do
      namespace :v1 do
        resources :stories, only: [:index, :show]
      end
    end
end
