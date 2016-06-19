require "db/snapshot/version"

module Db
  module Snapshot
    def self.list
      system('ls -la -tr dump/')
    end

    def self.create(snapshot_name = '')
      date_time = Time.now.strftime("%Y%m%d_%H%M")
      if snapshot_name.present?
        database_name = snapshot_name
      else
        database_name = Mongoid.default_session.options[:database]
      end

      system("mongodump --db #{database_name} -o dump/#{date_time}")
    end

    def self.destroy(snapshot_name = '')
      system("rm -rf dump/#{snapshot_name}")
    end

    def self.travel_to(specific_date_time = '')
      self.restore(specific_date_time)
    end

    private

    def self.restore(specific_date_time = '')
      database_name = Mongoid.default_session.options[:database]
      system("mongorestore --drop --db #{database_name} dump/#{specific_date_time}/#{database_name}")
    end
  end
end
