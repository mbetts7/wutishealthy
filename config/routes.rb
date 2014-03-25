Wutishealthy::Application.routes.draw do

  root :to => "sites#index"

  devise_for :users,
    :controllers => {
      :omniauth_callbacks => "users/omniauth_callbacks"
    }

end
