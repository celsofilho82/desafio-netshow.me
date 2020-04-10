Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'videos#index'
  get 'my_videos', to: 'videos#my_videos' 
  resources :videos, only: [:delete]
  resources :users do
    resources :videos, only: [:new, :create, :show, :update]
  end
end
