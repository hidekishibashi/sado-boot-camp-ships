Rails.application.routes.draw do
  get 'sessions/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'top#index'
  get 'fares/car-ferry', to: 'fares#car_ferry'
  get 'fares/jetfoil', to: 'fares#jetfoil'
  #get 'auth/login', to: 'auth#login'
  #post 'auth/reserve', controller:'auth', action:'reserve'
  get    'auth/login',   to: 'auth#new'
  post   'auth/login',   to: 'auth#create'
  resources :reserve
end
