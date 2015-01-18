Rails.application.routes.draw do
  resources :profiles, only: [:index, :show]
end
