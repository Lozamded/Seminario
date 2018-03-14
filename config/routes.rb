Rails.application.routes.draw do
  resources :documentos
  resources :medicamentos
  resources :veterinarios
  resources :enfermedades
  resources :vacunas
  devise_for :users
  root 'fichas#index'

  resources :gatos do
    get 'receta', to: 'gatos#receta'
    get 'certificado', to: 'gatos#certificado'
  end
  resources :perros do
    get 'receta', to: 'perros#receta'
    get 'certificado', to: 'perros#certificado'
  end
  resources :fichas do
    get 'consentimiento', to: 'fichas#consentimiento'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
