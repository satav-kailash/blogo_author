Rails.application.routes.draw do
  get 'appointments/new'
  get 'patients/new'
  get 'doctors/new'
  #get 'employees/new'
  #get 'products/index'
  get 'profiles/new'
  get 'profiles/show'
  get 'profiles/create'
  get 'articles/index'
  get 'articles/show'
  #get 'products/show'
  #get 'products/id'
  get 'articles/id'
  resources :articles
  #resources :products
  resources :profiles, only: [:new, :create, :show]
  resources :authors do
    resources :accounts, only: [:new, :create]
    resources :books
  end

  resources :accounts, except: [:new, :create]
  post 'profiles/search'

  resources :doctors
  resources :patients
  resources :appointments

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "articles#index"
   #root "products#index"

end
