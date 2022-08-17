alias edbash='nano /home/sekiro/.bashrc'
alias edcomm='code /home/sekiro/.common_procedures/'
alias edalias='nano /home/sekiro/.common_procedures/scripts/aliases.sh'
alias john-repelant='gsettings set org.gnome.desktop.session idle-delay'

alias diff_ws='code /home/sekiro/differentiate_teleop_ws/ && code /home/sekiro/differentiate_teleop_ws/src/pellion_robot_ws/ && cd /home/sekiro/differentiate_teleop_ws'

alias pub_bunker_rc='rostopic pub --once /bunker_rc sensor_msgs/Joy "header:
  seq: 307
  stamp:
    secs: 1660180715
    nsecs: 568684552
  frame_id: ''
axes: [0.0, 0.0, 0.0, 0.0, 0.0]
buttons: [0, 0, 0, 0]" && rostopic pub --once /bunker_rc sensor_msgs/Joy "header:
  seq: 307
  stamp:
    secs: 1660180715
    nsecs: 568684552
  frame_id: ''
axes: [0.0, 0.0, 0.0, 0.0, 0.0]
buttons: [0, 0, 0, 2]" && rostopic pub --once /bunker_rc sensor_msgs/Joy "header:
  seq: 307
  stamp:
    secs: 1660180715
    nsecs: 568684552
  frame_id: ''
axes: [0.0, 0.0, 0.0, 0.0, 0.0]
buttons: [0, 0, 0, 1]" && rostopic pub --once /bunker_rc sensor_msgs/Joy "header:
  seq: 307
  stamp:
    secs: 1660180715
    nsecs: 568684552
  frame_id: ''
axes: [0.0, 0.0, 0.0, 0.0, 0.0]
buttons: [0, 0, 0, 0]" && rostopic pub --once /bunker_rc sensor_msgs/Joy "header:
  seq: 307
  stamp:
    secs: 1660180715
    nsecs: 568684552
  frame_id: ''
axes: [0.0, 0.0, 0.0, 0.0, 0.0]
buttons: [0, 0, 0, 0]" && rostopic pub --once /bunker_rc sensor_msgs/Joy "header:
  seq: 307
  stamp:
    secs: 1660180715
    nsecs: 568684552
  frame_id: ''
axes: [0.0, 0.0, 0.0, 0.0, 0.0]
buttons: [0, 0, 0, 2]" && rostopic pub --once /bunker_rc sensor_msgs/Joy "header:
  seq: 307
  stamp:
    secs: 1660180715
    nsecs: 568684552
  frame_id: ''
axes: [0.0, 0.0, 0.0, 0.0, 0.0]
buttons: [0, 0, 0, 2]"'

alias create_pkg='source /home/sekiro/chironix-create-pkg/scripts/chironix-create-pkg'


alias vcan0_up='sudo ip link add dev vcan0 type vcan && sudo ip link set up vcan0 && candump vcan0'
