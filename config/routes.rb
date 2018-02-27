Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :showings do 
    collection do 
      post :check_availability
    end
  end
  resources :bookings
  get '/:slug', to: "films#show"
end
