Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'users/index'
      get 'users/add'
      post 'users/add'
      get 'users/update'
      post 'users/update'
      get 'users/delete'
      post 'users/delete'
      get 'users/view'
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
