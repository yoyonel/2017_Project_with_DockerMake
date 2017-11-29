#!/bin/bash

# Add local user
# Either use the LOCAL_USER_ID if passed in at runtime or
# fallback

USER_ID=${LOCAL_USER_ID:-9001}

echo "Starting with UID : $USER_ID"
useradd --shell /bin/bash -u $USER_ID -o -c "" -m user
export HOME=/home/user

chown -R user:user $HOME

cp /root/.gitconfig $HOME/.gitconfig

# set env !
export ROS_OVERLAY_WS=${HOME}/overlay_ws
export ROS_CATKIN_WS=${HOME}/catkin_ws

echo "ROS_OVERLAY_WS: $ROS_OVERLAY_WS"
echo "ROS_CATKIN_WS: $ROS_CATKIN_WS"

export PATH=$PATH:${HOME}/scripts

cd $HOME

# from /ros_entrypoint.sh
# source /ros_entrypoint.sh
source "/opt/ros/$ROS_DISTRO/setup.bash"

exec /usr/local/bin/gosu user "$@"