mongofork()
{
  mongod --fork --logpath /var/log/mongodb/mongodb_fork.log
}

mongoforkstop()
{
  mongod --shutdown
}

replSetCreateDir()
{
  mkdir -p /data/rs1 /data/rs2 /data/rs3
  mkdir -p /data/log
}

replSetFork()
{
  mongod --replSet rset --logpath "/data/log/1.log" --dbpath /data/rs1 --port 27017 --oplogSize 64 --smallfiles --fork &&
  mongod --replSet rset --logpath "/data/log/2.log" --dbpath /data/rs2 --port 27018 --oplogSize 64 --smallfiles --fork &&
  mongod --replSet rset --logpath "/data/log/3.log" --dbpath /data/rs3 --port 27019 --oplogSize 64 --smallfiles --fork
}

replSetLoadConf()
{
  mongo --port 27017 < ~/dot13/assets/replSetConfig.js
}

replSetInit()
{
  "$(replSetCreateDir)"
  "$(replSetFork)"
  "$(replSetLoadConf)"
}
