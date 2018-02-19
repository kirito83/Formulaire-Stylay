Rails.application.routes.draw do
  devise_for :users

  root to: "home#index"

  devise_scope :webusers do
    get '/register', to: 'devise/registrations#new', as: :register
    get '/profile', to: 'devise/registrations#edit', as: :profile
  end
end
