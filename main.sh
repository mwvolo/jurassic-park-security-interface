#!/bin/bash

clear

echo "Jurrasic Park, System Security Interface"
echo "Version 4.0.5, Alpha E"
echo "Ready..."

echo -n ">"
while read access
do
	if [ "$access" == "access security" ]; then
		echo "access: PERMISSION DENIED"
		echo -n ">"
	elif [ "$access" == "access security grid" ]; then
		echo "access: PERMISSION DENIED"
		echo -n ">"
	elif [ "$access" == "exit" ]; then
		echo "Exiting, no settings saved."
		exit 0
	elif [ "$access" == "access main security grid" ]; then
		echo "access: PERMISSION DENIED....and...."
		while true
			do
				echo "YOU DIDN'T SAY THE MAGIC WORD"
				sleep 1
			done
	else
		echo "No command '$access' found, did you mean:"
		echo "  Command 'access security' from 'system-security-interface' (main)"
		echo "  Command 'access security grid' from 'system-security-interface' (main)"
		echo "  Command 'access main security grid' from 'system-security-interface' (main)"
		echo "  Command 'exit' (system)"
		echo "bash: command not found $access"
		echo
		echo -n ">"
	fi
done
