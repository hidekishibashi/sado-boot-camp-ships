Rails.application.routes.draw do
  devise_for :users, controllers: {
     registrations: 'users/registrations',
     sessions: 'users/sessions'
   }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'top#index'
  get 'fares/car-ferry', to: 'fares#car_ferry'
  get 'fares/jetfoil', to: 'fares#jetfoil'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'top#index'
  get 'fares/car-ferry', to: 'fares#car_ferry'
  get 'fares/jetfoil', to: 'fares#jetfoil'
  get 'reserve/index', to: 'reserve#index'
end
