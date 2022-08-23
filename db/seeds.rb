# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# 10 dishes

puts 'Cleaning database...'
Dish.destroy_all
puts 'Database cleaned'


# r1 = Role.create({ name: 'Regular', description: 'Can read items' })
# r2 = Role.create({ name: 'Seller', description: 'Can read and create items. Can update and destroy own items' })
# r3 = Role.create({ name: 'Admin', description: 'Can perform any CRUD operation on any resource' })

# u1 = User.create({ name: 'Sally', email: 'sally@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa', role_id: r1.id })
# u2 = User.create({ name: 'Sue', email: 'sue@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa', role_id: r2.id })
# u3 = User.create({ name: 'Kev', email: 'kev@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa', role_id: r2.id })
# u4 = User.create({ name: 'Jack', email: 'jack@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa', role_id: r3.id })
puts 'Creating Database'

i1 = Dish.create({ name: 'Pizza', description: 'Pizza de chocolate', price: 15, address: 'Lisbon' })
i2 = Dish.create({ name: 'Hamburguer', description: 'hamburguer with cheese', price: 19, address: 'Porto'})
i3 = Dish.create({ name: 'Steak', description: 'Steak with french ships', price: 30, address: 'Faro' })
i4 = Dish.create({ name: 'Bread', description: 'Bread with ham', price: 10, address: 'Braga' })
i5 = Dish.create({ name: 'Milk', description: 'Milk with honey', price: 5, address: 'Covilhã'})
i6 = Dish.create({ name: 'Mojito', description: 'Mojito with vodca', price: 10, address: 'Ponta delgada'})
i7 = Dish.create({ name: 'Fish', description: 'Fish with salad', price: 15, address: 'Coimbra'})
i8 = Dish.create({ name: 'Long drink', description: 'Long drink with cola and malibu', price: 15, address: 'Funchal'})
i9 = Dish.create({ name: 'Octupus', description: 'Octupus in the hoven', price: 25, address: 'Sesimbra'})
i10 = Dish.create({ name: 'Space goat', description: 'Goat in sidiral space', price: 300, address: 'Washington, D.C.'})

puts 'Database created'
