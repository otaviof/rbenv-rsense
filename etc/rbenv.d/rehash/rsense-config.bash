#!/usr/bin/env bash
#
# Summary: Reconfigure RSense to follow up rbenv, during 'rehash' hook.

set -e
[ -n "$RBENV_DEBUG" ] && set -x
[ -z "$RBENV_PLUGIN_NAME" ] && RBENV_PLUGIN_NAME="rsense"

RBENV_PLUGIN_ROOT="${RBENV_ROOT}/plugins/rbenv-${RBENV_PLUGIN_NAME}"
RBENV_PLUGIN_SOURCE=1

. "${RBENV_PLUGIN_ROOT}/bin/rbenv-${RBENV_PLUGIN_NAME}"
. "${RBENV_PLUGIN_ROOT}/bin/rbenv-${RBENV_PLUGIN_NAME}-config"

check_rsense_home

# EOF
