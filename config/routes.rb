Rails.application.routes.draw do

  resources :session_infos
  resources :session_attendances
  resources :project_weeklies
  resources :project_meetings
  resources :project_profiles
  resources :archives
  resources :users

  get 'check_duplicates' => 'users#check_duplicates'
  get 'penaltyRanking' => 'users#penaltyRanking'
  post 'authenticate' => 'authentication#authenticate'
  post 'getProjectMember' => 'users#getProjectMember'
end
