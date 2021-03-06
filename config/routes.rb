Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'posts#index'

  resources :posts,             only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    get 'archives', to: 'archives#index', on: :collection
  end

  resources :categories,        only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :work_experiences,  only: [:index, :new, :create, :edit, :update, :destroy]
  resources :curriculum_vitaes, only: [:index]
  resources :users,             only: [:index, :edit, :update]
  resources :accounts,          only: [:edit, :update]
  resources :formal_educations, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :profiles,          only: [:index, :new, :create, :edit, :update, :destroy]
  resources :sessions,          only: [:new, :create, :destroy]
  resources :site_identities
  resources :expertises,        only: [:index, :new, :create, :edit, :update, :destroy]
end
