Rails.application.routes.draw do
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/articles", to:"articles#index"
  get "/articles", to:"articles#create"
  get "/articles/new", to:"articles#new"
  #get "/articles/change", to:"articles#change"
  get "/articles/:id", to:"articles#show", as: :article
  root "articles#index"
  #root "posts#index"

  #resources :articles
  # Defines the root path route ("/")
  # root "articles#index"
end
