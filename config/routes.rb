Rails.application.routes.draw do
  #get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  #get 'admin/index'
  resources :users

  get 'admin' => 'admin#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  root 'admin#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
