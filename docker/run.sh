#!/bin/bash
docker run --net=host -it --rm \
           -v $(realpath ..):/root/catkin_ws/src/direct_lidar_odometry \
           $@ \
           dlo
