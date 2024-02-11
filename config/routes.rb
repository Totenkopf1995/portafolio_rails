Rails.application.routes.draw do
  root 'homes#index'

  get '/homes/index', to: 'homes#index'
  get '/homes/aptitudes', to: 'homes#aptitudes'
  get '/homes/contact', to: 'homes#contact'
  get '/homes/education', to: 'homes#education'
  get '/homes/proyect', to: 'homes#proyect'

  resources :contactos, only: [:new, :create]
end

