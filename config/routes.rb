Rails.application.routes.draw do
  get 'welcome/index'
  get 'profile/index'
  get 'profile/edit'

  devise_for :users, controllers: { sessions: 'users/sessions' }

  resources :users

  root 'welcome#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
