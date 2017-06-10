Rails.application.routes.draw do
  get 'mountains/index'

  get 'mountains/new'

  get 'mountains/show'

  devise_for :users
  # devise_for :users
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
