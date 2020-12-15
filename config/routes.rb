Rails.application.routes.draw do
  # root 'welcome#index'

  namespace :api do
    namespace :v1 do
      resources :users
      resources :todos
      post '/auth', to: 'auth#create'
      
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
