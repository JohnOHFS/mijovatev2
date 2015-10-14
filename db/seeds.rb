# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

granitecolors = [
 {url: "/assets/granite/absolute_black.jpg", name: "Absolute Black"},
 {url: "/assets/granite/african_ivory.jpg", name: "African Ivory"},
 {url: "/assets/granite/african_rainbow.jpg", name: "African Rainbow"}
 # this has to be manual unless you pull it from a CSV or something
]

granitecolors.each do |gc|
   Granitecolor.find_or_create_by(url: gc.url, name: gc.name)
end