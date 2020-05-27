Rails.application.routes.draw do

  # Landing page
  get 'welcome/index'

  # Profile page
  get 'profile/index'
  get 'profile/edit'

  # Generic Users
  resources :users,
            only: [:edit, :update, :delete],
            controller: 'users',
            as: :user_registration do
              get 'cancel'
            end

  # Devise pages
  devise_for :users, skip: [:registrations]

  # Generic Users
  resources :users

  # Default page
  root 'welcome#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
