#! /bin/bash


target=$1
resultDir=/home/afterburner/opt/work/$target
mkdir -p $resultDir
resolvers=/home/afterburner/opt/list/resolvers/resolvers.txt

passive(){
	amass enum --passive -rf $resolvers -d $target -o $resultDir/subdomains_$target.txt
}	
passive
