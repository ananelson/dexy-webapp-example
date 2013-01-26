### @export "find-pid"
ps aux | grep '[p]ython todo.py\|[U]SER'
ps aux | grep '[p]ython todo.py' | awk '{print $2}'

### @export "kill"
# http://stackoverflow.com/questions/3510673/find-and-kill-a-process-in-one-line-using-bash-and-regex
kill $(ps aux | grep '[p]ython todo.py' | awk '{print $2}')

### @export "check-killed"
curl -I http://localhost:8080 || echo "killed"
