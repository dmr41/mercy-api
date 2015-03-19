# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
Rant.delete_all
user1 =User.create!(first_name: "Dally",
                    last_name:"Dilly",
                    email:"yoe@wast.com",
                    password: "password",
                    password_confirmation: "password")

user2 =User.create!(first_name: "John",
                    last_name:"lenoard",
                    email:"hdos@wasts.com",
                    password: "password",
                    password_confirmation: "password")


user3 =User.create!(first_name: "Chilly",
                    last_name:"Willy",
                    email:"cdos@wast.com",
                    password: "password",
                    password_confirmation: "password")

user4 =User.create!(first_name: "Jeff",
                    last_name:"Dean",
                    email:"jeff@zilkey.com",
                    password: "password",
                    password_confirmation: "password")

user5 =User.create!(first_name: "Jeanette",
                    last_name:"Sibily",
                    email:"ss@ww.com",
                    password: "password",
                    password_confirmation: "password")

rant1 = Rant.create!(user_id: user2.id, title: "Loving it", body: "Seriously loving it")
rant2 = Rant.create!(user_id: user1.id, title: "Hating it", body: "Seriously hating it")
rant3 = Rant.create!(user_id: user2.id, title: "Say What?", body: "This music blows")
rant4 = Rant.create!(user_id: user1.id, title: "Downtown!", body: "Is the place to be")
rant5 = Rant.create!(user_id: user3.id, title: "Leave it!", body: "To Beaver")
rant6 = Rant.create!(user_id: user4.id, title: "Leave it!", body: "To Beaver")
rant7 = Rant.create!(user_id: user5.id, title: "Leave it!", body: "To Beaver")
