Rails.application.routes.draw do
  resources :leads

  root to: 'visitors#index'
end
