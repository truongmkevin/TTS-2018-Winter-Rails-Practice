Rails.application.routes.draw do
  resources :pets
  root 'welcome#index'
  # get '/' => 'welcome#index'

  get 'about-us' => 'welcome#about'

  # Do this one as well!
  get 'welcome/contact' => 'welcome#contact'

  delete 'page' => 'welcome#method_that_deletes'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
