Rails.application.routes.draw do
  root 'welcome#index'
  get "auth/:provider/callback", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  resource :retirements, only: %i[new create]
  resources :events do
    resources :tickets
  end
end
