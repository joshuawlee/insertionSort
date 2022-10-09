#!/bin/bash
for i in {0..2}
do
    if [ $i -eq 0 ]; then folder="ordered"; fi
    if [ $i -eq 0 ]; then folder="reverse-ordered"; fi
    if [ $i -eq 0 ]; then folder="random"; fi
    echo $folder
    for j in {0..5}
    do
	num=$((10**j))
	for _ in {0..4}
	do
	    time cat words/$folder-10e$j.txt | swift main.swift | > \dev\null
	    echo $num "words"
	done
    done
done
