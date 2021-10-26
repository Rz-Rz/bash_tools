#! /bin/bash

target=$1
resultDir=/home/afterburner/opt/work/$target
mkdir -p $resultDir

acrobat(){
	crobat -s $target | tee $resultDir/crobat_subs_$target.txt
}
acrobat
