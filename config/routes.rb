Rails.application.routes.draw do
  get 'welcome/index'
  resources :services

  root to: 'welcome#index'
end
