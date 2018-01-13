# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

User.destroy_all
Post.destroy_all
# City.destroy_all

city = ["San Francisco", "London", "Paris", "Washinton DC"]
# Users
users_data = []
4.times do
  first = FFaker::Name.first_name
  last = FFaker::Name.last_name
  users_data << {
    first_name: first,
    last_name: last,
    current_city: "San Francisco"
    email: "#{first[0]}_#{last}@example.com".downcase,
    password: "apple"
  }
end
users = User.create(users_data)

# Posts 
posts_data = []
6.times do
  posts_data << { 
    title: city.sample,
    content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
            tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
            quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
            consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
            cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
            proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
    user: users.sample
  }
end
posts = Post.create(posts_data)


# => probaably not needed now but leaving commented just in case
# User.create ([
#   {
#     first_name: "Bill",
#     last_name: "Smith",
#     current_city: "London",
#     email: "billsmith@email.com",
#     password: "bill"
#   },
#   {
#     first_name: "Bob",
#     last_name: "Brown",
#     current_city: "Houston",
#     email: "bobbrown@email.com",
#     password: "bob"
#   },
#   {
#     first_name: "Linda",
#     last_name: "Jones",
#     current_city: "San Francisco",
#     email: "lindajones@email.com",
#     password: "linda"
#   }
#   ])

# City.create ([
#   {
#   name: "London",
#   city_image: "http://atom.mu/wp-content/uploads/2017/01/London-Expat-Explore-Xmas-2017.jpg"
#   },
#   {
#   name: "San Franciso",
#   city_image: "http://www.gertchristen.org/wordpress/wp-content/uploads/2016/03/san-francisco-san-francisco-bay-1112x630.jpg"
#   },
#   {
#   name: "Paris",
#   city_image: "http://www.telegraph.co.uk/content/dam/Travel/2016/August/Paris-travel-AP65117955-xlarge.jpg"
#   }
#   ])

# Post.create ([
#   {
#   title: "Post 1"
#   content: "Post 1 Content, Post 1 Content, Post 1 Content, Post 1 Content, "
#   user_id: "1"
#   city_id: "1"
#   },
#   {
#   title: "Post 2"
#   content: "Post 2 Content, Post 2 Content, Post 2 Content, Post 2 Content, "
#   user_id: "2"
#   city_id: "2"
#   },
#   {
#   title: "Post 3"
#   content: "Post 3 Content, Post 3 Content, Post 3 Content, Post 3 Content, "
#   user_id: "3"
#   city_id: "3"
#   },
#   ])
