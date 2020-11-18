Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'pages#home'
  get "programme", to: "pages#programme"
  get "inscription", to: "pages#inscription"
  get "erasmusplus", to: "pages#erasmusplus"
  get "questions", to: "pages#questions"
  get "legal", to: "pages#legal"
  get "confidential", to: "pages#confidential"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :events do
    resources :questions, only: [ :show, :new, :create ] do
    end

    resources :participants, only: [ :show, :new, :create ] do
    end

  end
  # resources :participants, only: [ :show, :new, :create, :edit, :update, :destroy ]

  namespace :company_admin do
    get 'dashboard', to: "dashboard#show", as: :dashboard
    get 'participants', to: "participants#index"
    delete 'participants', to: "participants#destroy"
    get 'workshops', to: "workshops#index"
    get 'questions', to: "questions#index"
    delete 'questions', to: "questions#destroy"
  end
end
