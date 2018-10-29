Rails.application.routes.draw do
  resources :project_meetings
  resources :archives
  resources :users, except: :index
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'users/:email', to: 'users#check_duplicate?'


  post 'authenticate', to: 'authentication#authenticate'
end
