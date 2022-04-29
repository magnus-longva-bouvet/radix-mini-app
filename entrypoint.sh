#!/bin/sh
while true; do printf 'HTTP/1.1 200 OK\n\n%s' "hello" | netcat -l -N 8080; done