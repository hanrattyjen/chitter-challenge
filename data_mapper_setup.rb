require 'data_mapper'
require 'dm-postgres-adapter'

require_relative './app/models/user'
require_relative './app/models/peep'

# DataMapper::Logger.new($stdout, :debug)
DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://chitter_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!
