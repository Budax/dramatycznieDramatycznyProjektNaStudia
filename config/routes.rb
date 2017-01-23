Rails.application.routes.draw do
  resources :reports
  resources :countries
  resources :comments
  resources :movie_categories
  resources :movies
  resources :movis
  resources :actors
  get 'welcome/index'
root :to => "welcome#index"
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
