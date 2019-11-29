Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "crafts#index"
  resources :crafts
  get 'shop', to: 'crafts#shop'
  
end
