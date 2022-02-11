Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

    ############################## READ
    get '/tasks' => 'tasks#index'
    # tasks#index tasks controller, index method
  
    ############################## CREATE
    # New - mauna kay show kasi top to bottom binabasa ang routes
    get '/tasks/new' => 'tasks#new', as: 'task_new'
    post '/tasks' => 'tasks#create'
  
    ############################## READ
    # Show by ID
    get '/tasks/:id' => 'tasks#show', as: 'task_show'
    # :id  -> route parameter
  
    ############################## UPDATE
    get '/task/:id/edit' => 'tasks#edit', as: 'task_edit' 
    put '/task/:id' => 'tasks#update', as: 'task_update' 
  
    ############################## DELETE
    delete '/task/:id' => 'tasks#delete', as: 'task_delete'
end
