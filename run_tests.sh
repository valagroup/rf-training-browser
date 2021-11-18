#!/bin/sh
docker build -t robot-browser .
  docker run --rm \
    --network="host" \
      --volume "$PWD/robot":/robot\
        robot-browser \
          bash -c "robot --outputdir /robot/output /robot"
