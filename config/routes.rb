Rails.application.routes.draw do
  devise_for :users

  resources :users

  authenticated :user do
    root 'users#index', as: :authenticated_root
  end

  resources :static_pages
  root to: 'static_pages#home'
end
