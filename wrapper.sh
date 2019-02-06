#!/bin/bash
set -e

nohup ${GITLAB_RUNTIME_DIR}/adop &

exec /sbin/entrypoint.sh "$@"