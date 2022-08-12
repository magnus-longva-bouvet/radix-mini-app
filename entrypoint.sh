#!/bin/sh
while true; do printf 'HTTP/1.1 200 OK\n\n%s' "hello" | netcat -l -N "${public_port}"; done