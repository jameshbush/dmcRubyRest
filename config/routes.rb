Rails.application.routes.draw do
  resources :dmdii_project_contacts
  resources :organization_contacts
  resources :organization_contact_types
  resources :dmdii_member_contacts
  resources :dmdii_contact_types
  resources :recent_updates
  resources :dmdii_documents
  resources :dmdii_quick_links
  resources :area_of_expertises

  resources :users
  get 'user', to: 'users#current'

  resources :organizations do
    get '/dmdii_projects', to: 'dmdii_projects#fetch_by_org'
    get '/contributing_organizations', to: 'organizations#contributing_projects'
  end
  get 'dmdiiMember', to: 'organizations#dmdii_members'
  get 'dmdiiMember/:id', to: 'organizations#show'

  resources :dmdii_projects do
    get '/contributing_organizations', to: 'dmdii_projects#contributing_organizations'
    get '/dmdii_project_updates', to: 'dmdii_projects#fetch_updates'
    get '/dmdii_documents', to: 'dmdii_projects#fetch_documents'
  end
  get 'dmdii_projects/member/active', to: 'dmdii_projects#active'
  get 'dmdii_events', to: 'dmdii_projects#events'

  resources :dmdii_project_updates
end
