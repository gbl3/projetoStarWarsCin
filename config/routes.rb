Rails.application.routes.draw do
  root :to => 'homes#index'
  resources :homes
  resources :usas
  resources :utilizas
  resources :utility_droids
  resources :battle_droids
  resources :droids
  resources :testa_e_testados
  resources :fois
  resources :aprendizs
  resources :siths
  resources :responsavels
  resources :padawans
  resources :jedis
  resources :cria
  resources :num_comunicadors
  resources :usuario_da_forcas
  resources :templos
  resources :sabre_de_luzs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
