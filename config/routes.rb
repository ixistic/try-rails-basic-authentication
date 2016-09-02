Rails.application.routes.draw do

  scope '/' do
    get '/', to: 'site#index'
    get '/show', to: 'site#show'
  end

  get 'logout' => 'sessions#destroy', as: 'log_out'
  get 'login' => 'sessions#new', as: 'log_in'
  get 'sign_up' => 'users#new', as: 'sign_up'
  resources :users
  resources :sessions
  root to: 'site#index'
end
