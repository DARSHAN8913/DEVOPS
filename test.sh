#!/bin/bash

set -e

echo "Starting build..."

rm -f main.class

javac main.java

echo "Build successful."

echo "Running application..."

output=$(java main)

echo "$output"

if [ "$output" = "DevOps CI pipeline working" ]; then

    echo "Test successful."

else

    echo "Test failed."

    exit 1

fi

rm -f main.class

echo "CI pipeline completed successfully."
