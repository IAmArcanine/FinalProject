#!/bin/sh
a=0
while [ $a -lt $5 ] ; do
	output=`./"$1" "$2" "$3" "../facebook_combined.txt" "$4" | grep "thread"`
	if [ -n "$output" ] ; then
		echo $output;
	fi
	sleep 1
	a=`expr $a '+' 1`
done
