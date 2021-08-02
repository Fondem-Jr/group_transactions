Rails.application.routes.draw do
  get 'admin/index'
  get 'seesions/new'
  get 'seesions/create'
  get 'seesions/destroy'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
