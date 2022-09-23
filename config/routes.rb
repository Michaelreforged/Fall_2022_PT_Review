Rails.application.routes.draw do
  namespace :api do
    resources :marathons do
      resources :participants
    end
    get '/participants', to:'participants#index_all'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
