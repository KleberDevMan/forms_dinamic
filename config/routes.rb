Rails.application.routes.draw do
  resources :services
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root root to: 'service#index'
end
