Rails.application.routes.draw do
  root to: 'jeus#index'
  resources :jeus
end
