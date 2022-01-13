Rails.application.routes.draw do
  resources :tweets, only: [:new, :edit, :create, :update, :index, :show, :destroy] do
    resource :favorites, only: [:create, :destroy]
  end
  devise_for :users
  root to: 'homes#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
