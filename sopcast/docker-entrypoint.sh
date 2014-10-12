#!/bin/bash
set -e

CMD="sp-sc $SC_URL/$SC_CHANNEL 3908 8908"

echo Running: $CMD 

if [ "$1" = '-q' ] 
then
  eval $CMD > /dev/null
else
  eval $CMD 
fi

