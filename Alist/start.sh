#!/bin/bash

cd /usr/bin/ && cns -json=cns.json &

# Wait for any process to exit
wait -n
  
# Exit with status of process that exited first
exit $?
