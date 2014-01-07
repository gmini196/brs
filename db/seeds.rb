# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Category.delete_all
Book.delete_all
Buy.delete_all
Read.delete_all
Review.delete_all
Rate.delete_all
Reading.delete_all
Comment.delete_all
Activity.delete_all
Like.delete_all
Relationship.delete_all

# . . .
User.create(username: "Example User",email: "example@framgia.com",
password: "123456", password_confirmation: "123456",)

User.create(username: "Nhat",email: "nhat@framgia.com",
password: "123456", password_confirmation: "123456",)

Admin.create(username: "Admin",email: "Admin@framgia.com",
password: "123456", password_confirmation: "123456",)

Category.create(name: "Programming Language")
Category.create(name: "Infomation Technology")
Category.create(name: "Computer Science")
Category.create(name: "Version Control")

Book.create(id_cate: 1, title: "Ruby on Rails tutorial", num_page: 300, author: "David", publish_date: "2012-6-6", price: 4)
Book.create(id_cate: 4, title: "Git Immersion", num_page: 234, author: "Brooke", publish_date: "2011-7-8", price: 2)
Book.create(id_cate: 2, title: "Learning MySQL", num_page: 400, author: "Richard", publish_date: "2010-9-2", price: 5)

Buy.create(book_id: 1, user_id: 1, buy_status: 0, approve_buy_date: "2014-6-1")
Buy.create(book_id: 1, user_id: 2, buy_status: 1, approve_buy_date: "2014-6-1")
Buy.create(book_id: 2, user_id: 3, buy_status: 0, approve_buy_date: "2014-6-1")

Activity.create(user_id: 1)
Activity.create(user_id: 1)
Activity.create(user_id: 1)
Activity.create(user_id: 2)
Activity.create(user_id: 2)
Activity.create(user_id: 3)
Activity.create(user_id: 3)
Activity.create(user_id: 2)
Activity.create(user_id: 1)

Favourite.create(book_id: 1, user_id: 1, activity_id: 1)
Favourite.create(book_id: 2, user_id: 1, activity_id: 2)
Favourite.create(book_id: 3, user_id: 1, activity_id: 3)

Read.create(book_id: 3, user_id: 2, activity_id: 4)

Review.create(book_id: 3, user_id: 2, activity_id: 5, review_title: "This book is greate", content_review: "This is the must read book for every programmer")
Read.create(book_id: 3, user_id: 3, activity_id: 6)
Read.create(book_id: 1, user_id: 3, activity_id: 7)

Rate.create(book_id: 1, user_id: 3, rate: 4)

Reading.create(book_id: 2, user_id: 3)

Comment.create(review_id: 1, user_id: 2, activity_id: 8, content: "You're right'")

Relationship.create(follower_id: 1, following_id: 2, activity_id: 9)

Like.create(user_id: 2, activity_id: 1)
Like.create(user_id: 2, activity_id: 2)
Like.create(user_id: 3, activity_id: 4)
Like.create(user_id: 1, activity_id: 8)
Like.create(user_id: 1, activity_id: 9)


# . . .
