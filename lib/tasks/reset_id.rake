# lib/tasks/reset_id.rake
namespace :db do
  desc "Reset ID sequence for a given table"
  task reset_id: :environment do
    table_name = ENV["TABLE_NAME"]
    sequence_name = "#{table_name}_id_seq"

    ActiveRecord::Base.connection.execute("ALTER SEQUENCE #{sequence_name} RESTART WITH 1;")

    puts "ID sequence reset for table #{table_name}."
  end
end
