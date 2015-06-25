Rails.application.routes.draw do
  resources :leads
  resources :contacts
  resources :admin
root to: 'visitors#index'
end
