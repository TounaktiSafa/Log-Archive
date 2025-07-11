#!/bin/bash

if [ -z "$1" ]; then
	echo "usage: $0 <log-directory>"
	exit 1
fi
log_dir="$1"

if [ ! -d "$log_dir" ] ; then
	echo "Error: Directory '$log_dir' does not exist."
	exit 1
fi
archive_dir="./logs"
mkdir -p "$archive_dir"
timestamp=$(date +"%y%m%d_%H%M%S")
archive_name="logs_archive_${timestamp}.tar.gz"
archive_path="${archive_dir}/${archive_name}"
tar -czf "$archive_path" -c "$(dirname "$log_dir")" "$(basename "$log_dir")"
echo "${timestamp} - Archived ${log_dir} to ${archive_path}" >> archive_log.txt
echo "logs archived to $"archive_path"

