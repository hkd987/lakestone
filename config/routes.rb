Rails.application.routes.draw do
  resources :leads
  resources :contacts
  root to: 'visitors#index'
  
end
