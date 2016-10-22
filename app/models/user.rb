require 'data_mapper'
require 'dm-postgres-adapter'
require 'bcrypt'

# attr_reader :password
# attr_accessor :password_confirmation

class User

  include DataMapper::Resource

  property :id,              Serial
  property :username,        String
  property :name,            String
  property :email,           String
  property :password_digest, Text

  def password=(password)
    self.password_digest = BCrypt::Password.create(password)
  end
end

# DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres:///chitter_#{ENV['RACK_ENV']}")
DataMapper.setup(:default, "postgres://localhost/chitter_test")
DataMapper.finalize
DataMapper.auto_upgrade!
