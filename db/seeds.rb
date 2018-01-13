# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
City.destroy_all
Post.destroy_all

User.create ([
  {
    first_name: "Bill",
    last_name: "Smith",
    current_city: "London",
    email: "billsmith@email.com",
    password: "bill"
  },
  {
    first_name: "Bob",
    last_name: "Brown",
    current_city: "Houston",
    email: "bobbrown@email.com",
    password: "bob"
  },
  {
    first_name: "Linda",
    last_name: "Jones",
    current_city: "San Francisco",
    email: "lindajones@email.com",
    password: "linda"
  }
  ])

City.create ([
  {
  name: "London",
  city_image: "http://atom.mu/wp-content/uploads/2017/01/London-Expat-Explore-Xmas-2017.jpg"
  },
  {
  name: "San Franciso",
  city_image: "http://www.gertchristen.org/wordpress/wp-content/uploads/2016/03/san-francisco-san-francisco-bay-1112x630.jpg"
  },
  {
  name: "Paris",
  city_image: "http://www.telegraph.co.uk/content/dam/Travel/2016/August/Paris-travel-AP65117955-xlarge.jpg"
  }
  ])

Post.create ([
  {
  title: "Post 1"
  content: "Post 1 Content, Post 1 Content, Post 1 Content, Post 1 Content, "
  user_id: "1"
  city_id: "1"
  },
  {
  title: "Post 2"
  content: "Post 2 Content, Post 2 Content, Post 2 Content, Post 2 Content, "
  user_id: "2"
  city_id: "2"
  },
  {
  title: "Post 3"
  content: "Post 3 Content, Post 3 Content, Post 3 Content, Post 3 Content, "
  user_id: "3"
  city_id: "3"
  },
  ])
