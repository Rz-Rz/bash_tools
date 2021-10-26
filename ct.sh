#! /bin/bash

domain=$1
resultDir=/home/afterburner/opt/work/$domain
bruteforceList=/home/afterburner/opt/list/subdomain/all.txt
resolverList=/home/afterburner/opt/list/resolvers/resolvers.txt
mkdir -p $resultDir

ct(){
        echo Certificate Transparency enumeration on crt.sh using ctfr...
        ctfrOutput=$resultDir/ctfr_.txt
        python3 /home/afterburner/opt/ctfr/ctfr.py -d $domain -o $ctfrOutput &>/dev/null
        echo Certificate Transparency enumeration on crt.sh using delator...
        delatorOutput=$resultDir/delator_.txt
        delator -d $domain -s crt | tee $delatorOutput &>/dev/null
}
ct
