#!/bin/bash

FILES="/home/sekiro/differentiate_teleop_ws/src/pellion_robot_ws/src/assimov_gps/src/asv_gps_mission_manager/src/mission_manager/tests/*.py"
for f in $FILES
do
  echo -e "#!/usr/bin/env python3\n$(cat $f)" > $f
done