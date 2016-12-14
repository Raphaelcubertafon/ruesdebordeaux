Rails.application.routes.draw do
  resources :rues
  root :to => "rues#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
