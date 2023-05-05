Rails.application.routes.draw do

  resources :homepgs do
    resources :reviewpgs
  end

  root 'homepgs#index'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  get '/profiles', to:'reviewpgs#profile'
end
