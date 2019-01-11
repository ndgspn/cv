Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'profiles#index'

  resources :posts, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :categories
  resources :work_experiences
  resources :curriculum_vitaes
end
