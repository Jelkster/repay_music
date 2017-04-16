Rails.application.routes.draw do
  resources :artists
  devise_for :users
  concern :paginatable do
    get '(page/:page)', :action => :index, :on => :collection, :as => ''
  end

  resources :donations, :concerns => :paginatable

  get 'home/index'

  root to: 'home#index'

  get 'data', to: 'home#data', defaults: { format: 'json' }
  post 'projects', to: 'home#projects'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
