#! /bin/bash

domain=$1
resultDir=/home/afterburner/opt/work/$domain
resolverList=/home/afterburner/opt/list/resolvers/resolvers.txt
mkdir -p "$resultDir"

dnsfinder(){
	subfinder -d "$domain" -rL $resolverList -o "$resultDir"/subfinder_"$domain".txt  
}
dnsfinder
