Rails.application.routes.draw do
  resources :freight_quotes
  resources :quote_types
  resources :shippers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
