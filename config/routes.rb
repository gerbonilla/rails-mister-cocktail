Rails.application.routes.draw do

  root to: 'cocktails#index'

  resources :cocktails, only: [:index, :show, :new, :create, :delete]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
