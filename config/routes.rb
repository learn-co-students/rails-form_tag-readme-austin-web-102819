Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts, only: [:index, :new, :create]
end

#adding :new inside [:index] will create new_post_path
#adding :create after :new so routing system knows what to do when a POST request is sent to the /posts resource (save after hitting submit)
