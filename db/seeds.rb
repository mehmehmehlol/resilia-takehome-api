# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Notification.delete_all

notification_arr = [
  {
    id: 1,
    title: "Welcome to My Page",
    body: "This is the first notification."
  },
  {
    id: 2,
    title: "Trials",
    body: "This is a testing notification."
  }
]

notification_arr.each { |n|
  notifcation = Notification.find_or_create_by(
    id: n[:id],
    title: n[:title],
    body: n[:body]
  )

}