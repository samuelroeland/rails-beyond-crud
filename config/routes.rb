Rails.application.routes.draw do
  get 'reviews/new'
  resources :restaurants do
    resources :reviews, only:[:new, :create]
    collection do
      get :top
    end
    member do
      get :chef
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
