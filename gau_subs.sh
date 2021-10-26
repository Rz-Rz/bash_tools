#! /bin/bash

domain=$1
resultDir=/home/afterburner/opt/work/$domain
mkdir -p $resultDir

timemachine(){
	echo "$domain" | gauplus -b png,jpg,gif --random-agent -t 25 | unfurl domains | sort -u | tee $resultDir/gau_subs_$domain
}
timemachine
