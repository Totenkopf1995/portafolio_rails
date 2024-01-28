Rails.application.routes.draw do
  root 'home#index'

  get '/home/index', to: 'home#index'
  get '/home/aptitudes', to: 'home#aptitudes'
  get '/home/contact', to: 'home#contact'
  get '/home/education', to: 'home#education'
  get '/home/proyect', to: 'home#proyect'

  get "up" => "rails/health#show", as: :rails_health_check

end
