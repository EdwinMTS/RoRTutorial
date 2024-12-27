Rails.application.routes.draw do
  # Normal get request of page
  get "/products", to: "products#index"
  # Get request for form to create item
  get "/products/new", to: "products#new"
  # Post request to create a new item
  post "/products", to: "products#create"
  # Get request for certain item
  get "/products/:id", to: "products#show"
  # Get request for form to edit certain item
  get "/products/:id/edit", to: "products#edit"
  # Patch request to edit certain item
  patch "/products/:id", to: "products#update"
  # Same as patch request above
  put "/products/:id", to: "products#update"
  # Delete request to delete certain item
  delete "/products/:id", to: "products#destroy"
  # The below line add all the above
  # resources :products
  # Setting the root
  root "products#index"
end
