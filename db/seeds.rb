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
    title: "Welcome",
    body: "This is the first notification.",
    to_read: true
  },
  {
    id: 2,
    title: "Interest In Supporting Local Restaurants",
    body: "To whom it may concern, we are the XYZ Family and interested in investing to support San Francisco's local business.",
    to_read: false
  },
  {
    id: 3,
    title: "Re: Re: Grant From ABC Organization",
    body: "Hi Mary, Thank you for accepting our grants to XYZ Street Center. We are more than excited to share our mutual passion towards our local businesses as a community.",
    to_read: false
  },
  {
    id: 4,
    title: "Thank You From African American Iniative at UC Berkeley",
    body: "Hi, we would like to extend our thank you to SFF for believing in us as a community and organization. The grant SFF has invested has opened up a lot of opportunities for us to contribute back to our African American students.",
    to_read: false
  },
  {
    id: 5,
    title: "Grant Form Confirmation",
    body: "Hi, thank you again for your funding to our company. Because of your funding, our company has expanded twice as much as we did a year ago. A PDF of grant confirmation is attached. Please let us know if there's any questions.",
    to_read: false
  }
]

def booleanRead(value)
  if value == true
    return true
  else 
    return false
  end
end

notification_arr.each { |n|
  notifcation = Notification.find_or_create_by(
    id: n[:id],
    title: n[:title],
    body: n[:body],
    to_read: booleanRead(n[:to_read])
  )
}