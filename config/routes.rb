Rails.application.routes.draw do
  root 'main#index'

  resources :cv, only: [:index]

  resources :contacts, only: [:create, :new]
end
