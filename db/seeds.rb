puts 'Seeding...'

nambas = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

nambas.each do |namba|
  response = RestClient.get "https://jsonplaceholder.typicode.com/posts/#{namba}"

  post_hash = JSON.parse(response)

  Note.create(
    title: post_hash['title'],
    content: post_hash['body']
  )
end

mambos = ['Adventure stories',
          'Classics',
          'Crime',
          'Fairy tales', 'fables, and folk tales',
          'Fantasy',
          'Historical fiction',
          'Horror',
          'Humour and satire',
          'Literary fiction',
          'Mystery']

mambos.each do |mambo|
  Category.create(
    name: mambo
  )
end

nambas.each do |namba|
  respons = RestClient.get "https://jsonplaceholder.typicode.com/users/#{namba}"

  post_hash = JSON.parse(respons)
  User.create(
    name: post_hash['name'],
    email: post_hash['email']
  )
end

puts 'Seeding done.'
