Rails.application.routes.draw do
  #get 'games/create'
  #get 'games/edit'
  #get 'games/update'
  #get 'games/show'
 

  resources :games

   #get 'pages/home'
    root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get "/pages/blog"
end
 
