puts 'Seeding...'

20.times do
  User.create(
    name: Faker::User.name,
    email: Faker::User.email
  )
end

20.times do
  Note.create(
    title: Faker::Note.title,
    content: Faker::Note.content
  )
end

puts 'Seeding done.'
