Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  get 'search' , to: 'students#search'
  resources :students do
    collection { post :import }
  end

  resources :receipts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
