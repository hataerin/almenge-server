Rails.application.routes.draw do
  resources :project_meetings
  resources :archives
  resources :users do
    collection do
      get :check_duplicates?
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post 'authenticate', to: 'authentication#authenticate'
end
