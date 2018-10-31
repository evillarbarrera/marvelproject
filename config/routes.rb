Rails.application.routes.draw do
  resources :characters
  root 'welcome#index'
  get 'details', to: 'characters#details'
  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
