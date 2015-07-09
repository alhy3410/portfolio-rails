Rails.application.routes.draw do
  devise_for :users
  resources :categories do
    resources :projects
  end

  root to: "home#index"
end
