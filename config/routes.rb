Rails.application.routes.draw do
  
  root 'apartments#index'
  
  resources :apartments do
    get 'map_location'
  end
  
  devise_for :users, controllers: { registrations: "registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
