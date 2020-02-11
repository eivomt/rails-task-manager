Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index'

  get 'tasks/new', to: 'tasks#new', as: :task_new


  get 'tasks/:id/edit', to: 'tasks#edit', as: :task_edit

  patch 'tasks/:id', to: 'tasks#update'

  post 'tasks', to: 'tasks#create', as: :task_create

  delete 'tasks/:id', to: 'tasks#delete', as: :delete

  get 'tasks/:id', to: 'tasks#show', as: :task
end
