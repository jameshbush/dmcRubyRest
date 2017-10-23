Rails.application.routes.draw do
  resources :recent_updates
  resources :dmdii_documents
  resources :dmdii_quick_links
  resources :dmdii_project_updates
  resources :contributing_organizations
  resources :area_of_expertises
  resources :dmdii_projects
  resources :users
  get 'user', to: 'users#current'
  resources :organizations
  get 'dmdiiMember', to: 'organizations#dmdii_members'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
