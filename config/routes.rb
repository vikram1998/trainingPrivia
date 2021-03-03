Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root "endpoint#index"
  
    get "/endpoints", to: "endpoints#index"
  
end
