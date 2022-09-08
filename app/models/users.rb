class User
  attr_accessor :name, :email, :id

  def initialize(name:, email:, id: nil)
    @id = id
    @name = name
    @email = email
  end

  def self.create_table
    sql = <<-SQL
        CREATE TABLE IF NOT EXISTS users(
            id INTEGER PRIMARY KEY,
            name TEXT,
            email TEXT
        )
    SQL
    DB[:conn].execute(sql)
  end
end
