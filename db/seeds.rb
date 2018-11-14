# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

user1 = User.create(username: "user1", password: "password1", email: "user1@email.com", location: "New York City, NY")
user2 = User.create(username: "user2", password: "password2", email: "user2@email.com", location: "Albany, NY")
user3 = User.create(username: "user3", password: "password3", email: "user3@email.com", location: "Austin, TX")
user4 = User.create(username: "user4", password: "password4", email: "user4@email.com", location: "Dallas, TX")

ww_to_dominos = Trip.create(user1.id, "29.7590441,-95.3657796,29.6832316,-95.4416925")
ww_to_azuma_to_dominos = Trip.create(user2.id, "29.7590441,-95.3657796,29.7603284,-95.365119,29.6832316,-95.4416925")
wework_to_brownbag_to_dominos = Trip.create(user3.id, "29.7590441,-95.3657796,29.7591653,-95.3655716,29.6832316,-95.4416925")
