Rails.application.routes.draw do
  

  devise_for :bosers
  resources :posts do 
   resources :comments
  end  
   root "posts#index"
  
   get '/about', to: 'pages#about'
end
