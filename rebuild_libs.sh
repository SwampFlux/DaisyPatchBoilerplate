#!/bin/bash
start_dir=$PWD

echo $start_dir

echo "rebuilding everything. . . "
echo "only errors, and warnings will output. . . "
echo "-------------------"
sleep 1

echo "rebuilding libdaisy"
cd lib/libDaisy
make clean | grep "warningr:\|error:"
make | grep "warning:r\|error:"
echo "done building libdaisy"

echo "rebuilding DaisySP"
cd "$start_dir"
cd lib/DaisySP
make clean | grep "warning:r\|error:"
make | grep "warning:r\|error:"
cd "$start_dir"
echo "done building daisySP"
echo "done building libs"

