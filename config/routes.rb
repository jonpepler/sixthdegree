Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/nodes/:key', to: 'nodes#index'

  resources :nodes, only: :create

  post '/nodes/create_child', to: 'nodes#create_child'

end
