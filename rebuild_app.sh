#!/bin/bash
echo "rebuilding daisy patch:"
start_dir=$PWD
HW=hardware_platforms

make clean | grep "warning\|error" # grep for silencing make outputs when regenerating everything.
make | grep "warning\|error"
