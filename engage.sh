#!/bin/bash

# Check if Postgres server is running and start if not
if ps ax | grep -v grep | grep Postgres > /dev/null
	then
		echo "Postgres is already running."
	else
		echo "Starting Postgres service..."
		echo "Giving Postgres 5 seconds to warm up..."
		open -a Postgres
		sleep 5
fi

# Check if Rails server is running and start if not
if ps ax | grep -v grep | grep rails > /dev/null
	then
		echo "A Rails server is already running"
	else
		echo "Starting Rails server on port 3000"
		echo "Giving it 5 seconds to warm up"
		osascript -e 'tell app "Terminal"
		   do script "cd ~/Projects/overcoffee.tv && rails s"
		end tell'
fi

# Give Rails a few seconds to warm up
sleep 5

# Open a Finder browser to the Project root
open .

# Open Safari browser to localhost on port 3000
open -a Safari 'http://localhost:3000'

# Open Sublime Text to working directory
subl .

echo "You are up and running. Your wish is my command."