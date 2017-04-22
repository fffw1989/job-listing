Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
    resources :jobs do
      post :publish
      post :hide 
    end
  end
  resources :jobs
  root 'jobs#index'
end
