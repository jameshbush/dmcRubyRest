Rails.application.routes.draw do
  resources :recent_updates
  resources :dmdii_documents
  resources :dmdii_quick_links
  resources :dmdii_project_updates
  resources :area_of_expertises
  resources :users
  get 'user', to: 'users#current'
  resources :organizations do
    resources :dmdii_projects, only: [:index]
  end
  get 'dmdiiMember', to: 'organizations#dmdii_members'
  resources :dmdii_projects do
    resources :contributing_organizations, only: [:index]
  end
end
