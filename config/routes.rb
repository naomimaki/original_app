Rails.application.routes.draw do 
  root to: 'posts#index'
  resources :posts, :manuals, :shifts, :shares
end