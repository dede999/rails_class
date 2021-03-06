Rails.application.routes.draw do

  mount_devise_token_auth_for 'User', at: 'auth'
  resources :kinds
  resources :users

  
  resources :contacts do
    resource :kind, only: [:show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
