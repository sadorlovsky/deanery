Rails.application.routes.draw do

  resources :lessons
  resources :disciplines
  resources :teachers
  resources :teachers
  
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout'}
  resources :users
  
  get 'students', to: 'students#all'
  get 'students/all', to: 'students#all'

  resources :students, only: [:destroy, :show, :edit, :update]
  resources :groups do
    resources :students, only: [:create, :index, :new]
  end

  authenticated :user do
    root 'students#all', as: :authenticated_root
  end

  unauthenticated do
    root 'static_pages#home', as: :unauthenticated_root
  end

end
