Rails.application.routes.draw do
  resources :users
  get 'user', to: 'users#current'
  resources :organizations
  get 'dmdiiMember', to: 'organizations#dmdii_members'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
