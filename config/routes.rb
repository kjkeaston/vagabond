Rails.application.routes.draw do

# => home
root "home#index"

# => users
# get "/users", to: "users#index", as: "users" # => not needed currently as no users index view for all users
get "/users/new", to: "users#new", as: "new_user"
post "/users", to: "users#create"
get "/users/:id", to: "users#show", as: "user"
get "/users/:id/edit", to: "users#edit", as: "edit_user"
patch "/users/:id", to: "users#update"
delete "/users/:id", to: "users#destroy"


#=>sessions
get "/login", to: "sessions#new"
get "/logout", to: "sessions#destroy"
post "/sessions", to: "sessions#create"


# => cities
<<<<<<< HEAD
resources :cities 
=======
>>>>>>> master
# get "/cities/:id", to: "cities#show", as: "city"


#=> posts
# no post index currently
# get "/users/:user_id/posts", to: "posts#index", as: "user_posts"
get "/users/:user_id/posts/new", to: "posts#new", as: "new_user_post"
# post "/users/:user_id/posts", to: "posts#create"
get "/posts/:id", to: "posts#show", as: "post"
get "/posts/:id/edit", to: "posts#edit", as: "edit_post"
patch "/posts/:id", to: "posts#update"
delete "/posts/:id", to: "posts#destroy"




#new
#create
#destroy



end
