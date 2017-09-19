class Mean < ApplicationRecord

  establish_connection :sandbox
#  db_config = YAML.load_file('config/database.yml')
#  db_setting = db_config["sandbox"]

#  server = db_setting["dataserver"]
#  user = db_setting["username"]
#  pass = db_setting["password"]
#  data = db_setting["database"]
#  port = db_setting["port"]

#  client = self.TinyTds::Client.new(username: user, password: pass, dataserver: server, port: port, database: data )
#  self.table_name = client.execute("SELECT * FROM information_schema.tables WHERE TABLE_TYPE='BASE TABLE' AND TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'EXM03'")
  self.table_name = 'EXM03'
end
