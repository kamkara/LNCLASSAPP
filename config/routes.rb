Rails.application.routes.draw do
  resources :courses
  get 'dashboard/index'
  get 'profile/index'
  resources :citytowns do
    resources :schools
      
  end
  
  resources :materials
  get 'accounted/student'
  get 'accounted/teacher'
  get 'accounted/team'
  resources :levels
  root to:'homes#index'

  devise_for :users, controllers: { registrations: 'users/registrations' }

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
