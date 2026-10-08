#!/bin/sh
# The login form posts to /login and registration is open.
set -e
H=http://web:5000
curl -fsS "$H/" | grep -q 'action="/login"'
curl -fsS "$H/register" -o /dev/null
