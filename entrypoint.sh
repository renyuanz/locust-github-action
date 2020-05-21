#!/bin/sh

# `$*` expands the `args` supplied in an `array` individually 
# or splits `args` in a string separated by whitespace.
if [ -z "$locustfile"]
then
    file = "locustfile.py"
else
    file= "/github/workspaces/$locustfile"
fi

sh -c "-f $file --headless -u 5 -r 5 --run-time 10s -H $URL"