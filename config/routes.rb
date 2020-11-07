Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'customers#index'

  resources :customers, only: [:index] do
    collection do
      get 'missing_email'
    end

    collection do
      get 'alphabetized'
    end
  end

end
