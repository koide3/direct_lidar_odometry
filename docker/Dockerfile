FROM ros:noetic

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
   git wget nano unzip build-essential libomp-dev python3-pip \
   libmetis-dev ros-noetic-pcl-ros ros-noetic-eigen-conversions \
 && apt-get clean && rm -rf /var/lib/apt/lists/*


WORKDIR /root/catkin_ws/src
RUN /bin/bash -c '. /opt/ros/noetic/setup.bash; catkin_init_workspace'

COPY . /root/catkin_ws/src/direct_lidar_odometry

WORKDIR /root/catkin_ws
RUN /bin/bash -c '. /opt/ros/noetic/setup.bash; catkin_make -DCMAKE_BUILD_TYPE=Release'

RUN sed -i "6i source \"/root/catkin_ws/devel/setup.bash\"" /ros_entrypoint.sh

WORKDIR /root/catkin_ws/src/direct_lidar_odometry

ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["bash"]
