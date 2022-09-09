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

puts 'Seeding done.'
