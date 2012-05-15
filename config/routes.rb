PracticeApp::Application.routes.draw do
  
  get '/users', :controller => 'users', :action => 'index', :as => :users
  post '/users', :controller => 'users', :action => 'create'
  
  get '/users/new', :controller => 'users', :action => 'new', :as => :new_user 
  get '/users/:id', :controller => 'users', :action => 'show', :as => :user 
  get '/users/:id/edit', :controller => 'users', :action => 'edit', :as => :edit_user 
  put '/users/:id', :controller => 'users', :action => 'update'
  delete '/users/:id', :controller => 'users', :action => 'destroy'
  
  
end
