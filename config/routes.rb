Rails.application.routes.draw do
  devise_for :users 

  root to: 'welcome#index'
  resources :posts, :manuals, :shifts, :shares
  resources :welcome, only: :index
end
