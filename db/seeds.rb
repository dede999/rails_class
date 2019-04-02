# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Faker::Config.locale = 'pt-BR'

k = %w(Amigos Familia Paquera Trabalho Blocked)
k.each do |kind|
    Kind.create!(
        description: kind
    )
end

50.times do |i|
    n = Faker::Name.name
    Contact.create!(
        name: n,
        email: Faker::Internet.email(n, '_'),
        c_number: Faker::PhoneNumber.cell_phone,
        b_day: Faker::Date.birthday(18, 65),
        kind: Kind.all.sample
    )
    puts "New Record ##{i+1}"
end