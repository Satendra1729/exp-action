#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT

mkdir  test_folder
echo "From Docker Image" >> test_folder/run.txt