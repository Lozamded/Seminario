Rails.application.routes.draw do
  resources :enfermedades
  resources :vacunas
  devise_for :users
  root 'fichas#index'

  resources :gatos
  resources :perros
  resources :fichas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
