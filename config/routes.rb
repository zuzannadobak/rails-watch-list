Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists, only: %i[index new show create] do
    # new and create
  resources :bookmarks, only: %i[new create]
  end
  # destroy
  resources :bookmarks, only: %i[destroy]
end
