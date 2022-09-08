require 'bundler/setup'
Bundler.require(:default, :development)

require_relative '../app/models/users'
require_relative '../app/models/notes'

DB = { conn: SQLite3::Database.new('db/ideatedb.db') }
