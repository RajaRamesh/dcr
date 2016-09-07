#!/usr/bin/env bash
#
# Helper to link dev version to currently installed one.
#
# Work for MacOS only.
#

# Dereference linked dcr.
existing_dcr=$(readlink $(which dcr))
bin_hln=$(which hln)

[ "$existing_dcr" == "" ] && echo "Nothing to link to" && exit 1
[ "$bin_hln" == "" ] && echo "hln is not found" && exit 1

mv $existing_dcr $existing_dcr.bak

hln $(pwd)/dcr $existing_dcr
which dcr
