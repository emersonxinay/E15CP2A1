Rails.application.routes.draw do
  devise_for :users, controller: {
    registrations: 'user/registrations'
  }
  resources :histories
  root "histories#index"
  get 'mystories', to: 'histories#mystories_user'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
