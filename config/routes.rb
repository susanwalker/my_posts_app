Rails.application.routes.draw do
  get '/posts', to: 'posts#index'
  post '/posts', to: 'posts#create'
  put '/posts/:id', to: 'posts#update'
  delete '/posts/:id', to: 'posts#delete'
end
