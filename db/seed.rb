namespace :db do
  desc 'seed the database with data'
  task seed: :environment do
    require_relative './db/seeds'
  end
end
