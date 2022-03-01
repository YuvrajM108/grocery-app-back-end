Rails.application.routes.draw do
  namespace :api do
    namespace :v1, defaults: { format: 'json'} do
      resources :sessions, only: [:create]
      resources :registrations, only: [:create]
      delete :logout, to: 'sessions#logout'
      get :logged_in to: 'sessions#logged_in'
      resources :items, only: [:index, :show, :update]
      get '/items/:id', to: 'items#show'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
