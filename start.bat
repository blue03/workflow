set DB_SERVER=192.168.0.73
set MONGO_URL=mongodb://%DB_SERVER%/fssh20180310
set MONGO_OPLOG_URL=mongodb://%DB_SERVER%/local
set MULTIPLE_INSTANCES_COLLECTION_NAME=workflow_instances
set ROOT_URL=http://192.168.0.142:3000/
meteor run --settings settings.json
