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

rant1 = Rant.create!(user_id: user2.id, title: "Summer with Sam!",
 body: "The Neighbor dog told me to kill everyon.The Neighbor dog told me to kill everyone. The Neighbor dog told me to kill everyone. The Neighbor dog told me to kill everyone.")
rant2 = Rant.create!(user_id: user1.id, title: "David Lynch Speaks",
 body: "The Gum you like will come back in style. The Gum you like will come back in style. The Gum you like will come back in style. The Gum you like will come back in style. The Gum you like will come back in style.")
rant3 = Rant.create!(user_id: user2.id, title: "Hotels make me Crazy!",
 body: "All work and now play makes Jack a Dull boy.  All work and now play makes Jack a Dull boy. All work and now play makes Jack a Dull boy. All work and now play makes Jack a Dull boy. All work and now play makes Jack a Dull boy. All work and now play makes Jack a Dull boy. All work and now play makes Jack a Dull boy. All work and now play makes Jack a Dull boy. All work and now play makes Jack a Dull boy. All work and now play makes Jack a Dull boy. All work and now play makes Jack a Dull boy.")
rant4 = Rant.create!(user_id: user1.id, title: "Suburbia insanity.",
 body: "I love Satan, Satan is my friend. I love Satan, Satan is my Pal.  love Satan, Satan is my friend. I love Satan, Satan is my Pal.  love Satan, Satan is my friend. I love Satan, Satan is my Pal.  love Satan, Satan is my friend. I love Satan, Satan is my Pal.  love Satan, Satan is my friend. I love Satan, Satan is my Pal.")
rant5 = Rant.create!(user_id: user3.id, title: "The Lambs are not silent",
 body: "It puts lotion on itself or it gets the hose. It puts lotion on itself or it gets the hose. It puts lotion on itself or it gets the hose. It puts lotion on itself or it gets the hose. It puts lotion on itself or it gets the hose. It puts lotion on itself or it gets the hose. ")
rant6 = Rant.create!(user_id: user4.id, title: "The only line I ever nailed!",
 body: "Guns, I need guns. Guns, I need guns. Guns, I need guns. Guns, I need guns. Guns, I need guns. Guns, I need guns. Guns, I need guns. Guns, I need guns. Guns, I need guns. Guns, I need guns. Guns, I need guns. Guns, I need guns. Guns, I need guns.")
rant7 = Rant.create!(user_id: user5.id, title: "Last Rights",
 body: "Through this holy anointing may the Lord in his love and mercy help you with the grace of the Holy Spirit. May the Lord who frees you from sin save you and raise you up.")
