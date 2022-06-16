# direct_lidar_odometry

Original repository: https://github.com/vectr-ucla/direct_lidar_odometry


## Build
```bash
cd direct_lidar_odometry/docker
./build.sh
```

## Run

### On host:
```bash
roscore
```

```bash
rviz -d launch/dlo.rviz
```

```bash
rosbag play dlo_test.bag
```

dlo_test.bag: https://ucla.box.com/shared/static/ziojd3auzp0zzcgwb1ucau9anh69xwv9.bag


### On docker image:
```bash
cd direct_lidar_odometry/docker
./run.sh

roslaunch direct_lidar_odometry dlo.launch
```

![dlo](https://user-images.githubusercontent.com/31344317/174030856-22c189a8-cdbc-4824-8931-09e3a3fe2be6.gif)
