Rails.application.routes.draw do
  devise_for :users
  resources :categories do
    resources :projects
  end

  resources :projects do
    resources :comments
  end

  root to: "home#index"
end
