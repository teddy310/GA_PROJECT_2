# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create({first_name: 'Ted', last_name: 'Shumway', email: 'shumway.ted@gmail.com', password: 'password'})
User.create({first_name: 'Eddie', last_name: 'Jung', email: 'eddie@gmail.com', password: 'password'})
User.create({first_name: 'Juan', last_name: 'R', email: 'juan@gmail.com', password: 'password'})


Product.create({title: 'product1', description: 'first product', price: 20})
