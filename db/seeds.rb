# namespace :db do
# desc 'seed the database with data'

puts 'Seeding notes....'

20.times do |_count|
  Note.create(
    title: Faker::Note.title,
    content: Faker::Note.content
  )
end

puts 'Done seeding'

# task seed: :environment do
# require_relative './db/seeds'
# end
# end
