#! /bin/bash

target=$1
c_target=${target//https:\/\//}
resultDir=/home/afterburner/opt/work/$c_target
mkdir -p $resultDir

jssubs(){
	python3 /home/afterburner/opt/JSFinder/JSFinder.py -u $target -d -os $resultDir/JS_subs_$c_target.txt
}
jssubs
