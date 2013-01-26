### @export "info"
tree -n

### @export "load-sql"
sqlite3 todo.sqlite3 < schema.sql

### @export "start-server"
nohup python todo.py &
sleep 2
curl -I http://localhost:8080
