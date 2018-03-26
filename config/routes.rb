Rails.application.routes.draw do
  devise_for :users
  resources :memberships
  resources :reports
  resources :missionvisions
  resources :ethics
  resources :descriptions
  resources :abouts
  root 'pages#index'
  
  get 'pages/index'

  get 'pages/about'

  get 'pages/ethic'

  get 'pages/corporateteam'

  get 'pages/trading'

  get 'pages/membership'

  get 'pages/contact'

  get 'pages/missionvision'

  get 'pages/report'

  get 'pages/freeresource'

  get 'pages/prremiunreourse'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
