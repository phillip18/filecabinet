Rails.application.routes.draw do
  
  devise_for :users
  get 'welcome/index'

  resources :docs 

  authenticated :user do
  	root :to => 'docs#index'
  end
  
  root 'welcome#index'

end
