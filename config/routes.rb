Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "homes#top"
  get  "home/about", to: "homes#about"

  resources :users, only: [:show, :new, :edit, :update, :index]
  resources :books, only: [:new, :create,:index,:show,:edit,:update,:destroy]

end
