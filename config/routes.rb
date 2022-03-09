Rails.application.routes.draw do
  resources :humen
  resources :high_scores
  get 'niigata/index'
  get 'posts/index'
  devise_for :users, controllers: {
     registrations: 'users/registrations',
     sessions: 'users/sessions'
   }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'top#index'
  get 'fares/car-ferry', to: 'fares#car_ferry'
  get 'fares/jetfoil', to: 'fares#jetfoil'
  get 'reserve/index', to: 'reserve#index'
  get 'hello-world', to: 'hello#index'
end
