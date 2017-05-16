#!/bin/bash

function debug() {
  echo $@
}

function error() {
  echo "$1" >&2
  exit 1
}

function validate() {
  for VAR in $@
  do
    debug "$VAR: ${!VAR}"
    if [[ -z "${!VAR}" ]]; then
     error "environment variable $VAR is required"
    fi
  done

}

SYNCDIR=${SYNCDIR:-"/data"}

validate ACCESSKEY SECRETKEY BUCKET

qrsboxcli init $ACCESSKEY $SECRETKEY $SYNCDIR $BUCKET $KEYPREFIX
