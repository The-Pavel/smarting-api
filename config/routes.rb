Rails.application.routes.draw do
  # requiring sidekiq webview, and assigning it to root/sidekiq route, NETU ZASHITY ADMINA
  require "sidekiq/web"
  mount Sidekiq::Web => '/sidekiq'
  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :posts, only: [ :index, :create ]
      resources :comments, only: [ :create ]
    end
  end

end
