Rails.application.routes.draw do
  get 'welcome/index'
  get 'profile/index'
  get 'profile/edit'

  resources :users,
            only: [:edit, :update, :delete],
            controller: 'users',
            as: :user_registration do
              get 'cancel'
            end

  devise_for :users, skip: [:registrations]

  resources :users

  root 'welcome#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
