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
# delete "/users/:id", to: "users#destroy"

#edit
#destroy

#=>sessions
#new
#destroy
#create

# => cities
#index
#show

#=> posts

#new
#create
#destroy






end
