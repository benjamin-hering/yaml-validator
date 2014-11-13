#!/bin/bash
#
# YAML Validates a single file
#
# Author Benjamin Hering - benjamin.hering@gmail.com
#

ruby -e "require 'yaml'; YAML.load_file('$1')"
if [ $? == 0 ]; then
	echo 'YAML is valid'
else
	echo 'YAML is not valid!'
fi
