Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "programme", to: "pages#programme"
  get "inscription", to: "pages#inscription"
  get "erasmus", to: "pages#erasmus"
  get "questions", to: "pages#questions"
  get "contact", to: "pages#contact"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :events do
    resources :participants, only: [ :show, :new, :create, :edit, :update, :destroy ]
  end
end
