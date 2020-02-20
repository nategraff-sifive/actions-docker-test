#!/usr/bin/env bash

set -euxo pipefail

if [ $# != 2 ] ; then
  >&2 echo "Wrong number of arguments!"
  exit 1
fi

unset API
unset RUN
API=$1
RUN=$2

unset artifacts
artifacts=$(curl -sS ${API}/runs/${RUN}/artifacts)
unset artifact
artifact=$(echo $artifacts | jq .artifacts[0].id)

echo "Deleting artifact $artifact"

curl -X "DELETE" ${API}/artifacts/${artifact}
