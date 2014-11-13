#!/bin/bash
#
# Validates recursively all YAML files in a directory
#
# Author Benjamin Hering - benjamin.hering@gmail.com
#

YAML_FILES=($(find $1 -type f -name "*.yaml"))
for YAML in ${YAML_FILES[@]}; do
	ruby -e "require 'yaml'; YAML.load_file('$YAML')"
	if [ $? == 0 ]; then
		echo $YAML' is valid'
	else
		echo $YAML' is not valid!'
	fi
done
