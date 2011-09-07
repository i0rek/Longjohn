Longjohn::Application.routes.draw do

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  # root :to => "users#new"
  resources :users
  resources :sessions

  root :to => 'start#index'

  namespace :equipment do
    resources :devices, :only => [:index]
    resources :reservations
  end

end
