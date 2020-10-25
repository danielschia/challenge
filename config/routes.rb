Rails.application.routes.draw do
  root to: 'pages#home'
  resources :solicitantes do
    resources :solicitations, only: [:new, :create]
  end
end
