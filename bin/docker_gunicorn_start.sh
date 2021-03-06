#!/bin/sh

DAEMON=$1

if [ ${DAEMON} = "daemon" ]
then
    gunicorn --chdir app app:app -w 2 --threads 2 -b 0.0.0.0:$PORT --log-level debug --daemon
else
    nginx
    gunicorn --chdir app app:app -w 2 --threads 2 -b 0.0.0.0:$PORT --log-level debug
fi