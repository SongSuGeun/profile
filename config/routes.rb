Rails.application.routes.draw do
  resources :information

  #get 'main/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'main#index'
  
  resources :profile do
  end
end
