require "db/snapshot/version"

module Db
  module Snapshot
    def list
      system('ls -la -tr')
    end

    def create(snapshot_name = '')
      dump
    end

    def travel_to(specific_date_time = '')
      restore(specific_date_time)
    end

    private

    def dump
      date_time = Time.now.strftime("%Y%m%d_%H%M")
      system("mongodump -o dump/#{date_time}")
    end

    def restore(specific_date_time = '')
      system("mongorestore #{specific_date_time}")
    end
  end
end
