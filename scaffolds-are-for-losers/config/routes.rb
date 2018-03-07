Rails.application.routes.draw do
  root 'welcome#index'
  get 'users' => 'welcome#users'

  # Commented out because slides wanted to refactor to shorter
  # post 'create_users' => 'welcome#create_users'

  post 'create_users' => 'welcome#users'
  get 'products' => 'welcome#products'
  post 'products' => 'welcome#create_products'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
