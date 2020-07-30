#!/bin/sh

gunicorn --chdir app mvcapp:app -w 2 --threads 2 -b 0.0.0.0:5000 --log-level debug