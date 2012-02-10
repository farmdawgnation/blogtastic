#####
# Mongo Initilization File
#####

MongoMapper.connection = Mongo::Connection.new('localhost', 27017)
MongoMapper.database = "blogtastic-#{Rails.env}"

# Don't b0rk with Passenger
if defined?(PhusionPassenger)
   PhusionPassenger.on_event(:starting_worker_process) do |forked|
     MongoMapper.connection.connect if forked
   end
end

# Possibly some unicorn code will be required later?

