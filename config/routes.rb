Rails.application.routes.draw do
  devise_for :users
  resources :guards
  resources :appointments
  resources :worker_types
  resources :workers
  resources :medical_center_types
  resources :medical_centers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "medical_centers#index"
end
