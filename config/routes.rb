Rails.application.routes.draw do
  root 'properties#index'
  devise_for :admins, skip: :all
  devise_scope :admin do
    get 'admins/sign_in' => 'admins/sessions#new', as: 'new_admin_session'
    post 'admins/sign_in' => 'admins/sessions#create', as: 'admin_session'
    delete 'admins/sign_out' => 'admins/sessions#destroy', as: 'destroy_admin_session'    
  end

  devise_for :users, skip: :all
  devise_scope :user do
    get 'users/sign_in' => 'users/sessions#new', as: 'new_user_session'
    post 'users/sign_in' => 'users/sessions#create', as: 'user_session'
    delete 'users/sign_out' => 'users/sessions#destroy', as: 'destroy_user_session'
    get 'users/sign_up' => 'users/registrations#new', as: 'new_user_registration'
    post 'users' => 'users/registrations#create', as: 'user_registration'
    get 'users/password/new' => 'users/passwords#new', as: 'new_user_password'
  end

  namespace :admins do
    resources :properties
  end

  namespace :users do
    resources :properties, only: [:index, :show] do
      resources :likes, only: [:create, :destroy]
      resources :comments, only: :create
      collection do
        get 'search'
      end
      resources :images, only: [:create, :destroy, :new, :show]
    end
  end

  resources :users, only: [:index, :edit, :update, :show] do
    collection do
      get :likes
    end
  end

  resources :properties do
    collection do
      get :municipalities_select
    end
  end

end
