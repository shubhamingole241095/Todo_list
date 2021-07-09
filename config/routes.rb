Rails.application.routes.draw do
  resources :peoples
  resources :texts
  resources :addresses
  root "todo_lists#index"
  resources :todo_lists
  resources :todo_items do
    match :complete, on: :collection, via: [:patch]
   end
  end
