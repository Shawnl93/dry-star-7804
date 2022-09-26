Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/doctors/:id', to: 'doctors#show'
  # delete '/doctors/:id', to: 'doctors#destroy'

  resources :doctors, only: [:show]
  resources :drpatients, only: [:destroy]
end
