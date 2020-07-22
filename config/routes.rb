Rails.application.routes.draw do
  #principal route
  root 'products#index'

  #End point for consume products
  get 'products/api/resume', to: 'products#details_provider'
  
  #this is route for graphic charts
  resources :charts

  resources :products
  resources :tradmarks
  resources :presentations
  resources :providers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resource :reports  do
    get :report_generate
    get :send_report, defaults: { format: 'pdf' }
  end
end
