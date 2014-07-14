require 'logger'
require 'stringio'

require 'active_record'
require 'composite_primary_keys'
require 'sqlite3'
require File.expand_path('../../lib/acts_as_revisionable', __FILE__)

ActiveRecord::ActiveRecordError
ActiveRecord::Base.logger = Logger.new(StringIO.new)

puts "Testing with ActiveRecord #{ActiveRecord::VERSION::STRING}"

module ActsAsRevisionable
  module Test
    def self.create_database
      ActiveRecord::Base.establish_connection("adapter" => "sqlite3", "database" => ":memory:")
    end

    def self.delete_database
      ActiveRecord::Base.connection.drop_table(ActsAsRevisionable::RevisionRecord.table_name)
      ActiveRecord::Base.connection.disconnect!
    end
  end
end
