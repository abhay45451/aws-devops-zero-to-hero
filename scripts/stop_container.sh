#!/bin/bash
set -e

# Stop the running container (if any)
containerID=$(docker ps -q)  # Get the ID of the running container
if [ -n "$containerID" ]; then  # Check if containerID is not empty
    docker rm -f $containerID  # Force remove the container
else
    echo "No running container to stop."
fi
