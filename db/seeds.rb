# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




[{name: 'customer'}, {name: 'branch_manager'}].each do |role|
  Role.find_or_create_by(role)
end

role_customer = Role.find_by(name: 'customer')

user3 = User.create(user_name: "User1", email: "user3@mailinator.com",  birth_date: "12/07/1993", gender: "Male", phone: "123456789")

user4 = User.create(user_name: "User2", email: "user4@mailinator.com",  birth_date: "12/07/1993", gender: "Male", phone: "123456789")


UserRole.create(role_id: role_customer.id, user_id: user3.id)
UserRole.create(role_id: role_customer.id, user_id: user4.id)

CustomerDetail.create(open_date: '12/07/1993', user_id: user3.id, customer_name: "User1", branch: "Pune", indicator: true)
CustomerDetail.create(open_date: '12/07/1993', user_id: user4.id, customer_name: "User2", branch: "Indore", indicator: true)