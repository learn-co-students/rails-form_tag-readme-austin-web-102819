Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Route the GET request to /posts to the posts resource and call the index action
  resources :posts, only: [:index, :new, :create]
  # The above line will automatically create the following URL methods:
  #   post_path: GET /posts, with the controller action #index
  #   new_post_path: GET /posts/new with the controller action #new
  #   post_path: POST /post, with the controller action, #create
end
