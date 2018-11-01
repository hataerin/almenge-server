Rails.application.routes.draw do
  resources :session_infos
  resources :session_attendances
  resources :project_weeklies
  resources :project_meetings
  resources :project_profiles
  resources :archives
  resources :users, except: :index
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post 'authenticate', to: 'authentication#authenticate'
end
