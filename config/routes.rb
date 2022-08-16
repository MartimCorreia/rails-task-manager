Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/', to: 'tasks#index', as: :tasks
  get 'tasks/new', to: 'tasks#new'
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  get 'tasks/:id', to: 'tasks#show', as: :task
  post 'tasks', to: 'tasks#create'
  patch 'tasks/:id', to: 'tasks#update'
  #delete 'tasks/:id', to: 'tasks#destroy'

  resources :tasks, only: :destroy
end
