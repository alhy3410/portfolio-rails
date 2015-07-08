Rails.application.routes.draw do
  resources :categories do
    resources :projects
  end
  
end
