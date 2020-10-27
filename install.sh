#!/usr/bin/env bash

echo "This script explains and ask to proceed before each action."


Step() {
read -p "Continue? " -n 1 -r
echo ''
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi 
}

Step
