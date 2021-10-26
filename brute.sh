#! /bin/bash

domain=$1
resultDir=/home/afterburner/opt/work/$domain
bruteforceList=/home/afterburner/opt/list/subdomain/all.txt
resolverList=/home/afterburner/opt/list/resolvers/resolvers.txt
mkdir -p $resultDir

brute(){
        puredns bruteforce "$bruteforceList" $domain -r $resolverList --write $resultDir/brute_dns.txt

}

brute
