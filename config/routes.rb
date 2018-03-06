Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Read all
  get '/tasks', to: 'tasks#index'

  # Read 1
  get '/tasks/new', to: 'tasks#new'

  get '/tasks/:id', to: 'tasks#show', as: 'task'

  # Create new
  post '/tasks', to: 'tasks#create'

  # Edit
  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'

  # Update
  patch '/tasks/:id', to: 'tasks#update'

  # Remove
  delete '/tasks/:id', to: 'tasks#destroy'

  # resources :tasks
end
