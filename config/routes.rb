Rails.application.routes.draw do
  get 'entries/index'
  get 'entries/show'
  get 'entries/new'
  get 'entries/edit'
  resources :entries
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
