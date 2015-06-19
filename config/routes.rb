Rails.application.routes.draw do
  resources :contacts
  root to: 'visitors#index'
end
