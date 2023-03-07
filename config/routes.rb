Rails.application.routes.draw do
  devise_for :admins, skip:[:registrations, :passwords], controllers:{
    sessions: "admin/sessions"
  }
  
  devise_for :users, skip:[:passwords], controllers:{
    sessions: "user/sessions",
    registrations: "user/registrations"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root to: 'homes#top'
  
  namespace :admin do
    resources :users
    resources :categories
    resources :procedures do
      resources :additional_changes
    end
  end
  
  scope module: :user do
    resources :users
    resources :categories
    resources :procedures do
      resources :additional_changes
    end
  end
end
