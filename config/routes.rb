Rails.application.routes.draw do
  resources :ads
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'ads#index'
end
