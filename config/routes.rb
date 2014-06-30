Rails.application.routes.draw do

  resources :movies, :except => [:destroy]
  root :to => 'movies#index'

end
