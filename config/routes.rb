Rails.application.routes.draw do
  resources :discussions
  resources :users
  root 'users#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
