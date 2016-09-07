#!/usr/bin/env bash
#
# Helper to revert dev version to currently installed one.
#
# Work for MacOS only.
#

# Dereference linked dcr.
existing_dcr=$(readlink $(which dcr))
bin_hln=$(which hln)

[ "$existing_dcr" == "" ] && echo "Nothing to link to" && exit 1
[ "$bin_hln" == "" ] && echo "hln is not found" && exit 1

hln -u $existing_dcr

mv $existing_dcr.bak $existing_dcr

which dcr
