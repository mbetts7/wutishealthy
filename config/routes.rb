Wutishealthy::Application.routes.draw do

  root :to => "sites#index"

  devise_for :users, :skip => [:registrations, :sessions]

  devise_scope :user do 
  # devise/registrations 
  get 'signup' => 'devise/registrations#new', :as => :new_user_registration 
  post 'signup' => 'devise/registrations#create', :as => :user_registration 
  get 'users/cancel' => 'devise/registrations#cancel', :as => :cancel_user_registration 
  get 'users/edit' => 'devise/registrations#edit', :as => :edit_user_registration 
  put 'users' => 'devise/registrations#update' 
  delete 'users/cancel' => 'devise/registrations#destroy'   

  # devise/sessions
  get '/login' => 'devise/sessions#new', :as => :new_user_session
  post '/login' => 'devise/sessions#create', :as => :user_session
  delete '/logout' => 'devise/sessions#destroy', :as => :destroy_user_session
  end

end
