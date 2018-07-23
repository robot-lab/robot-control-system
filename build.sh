#!/bin/bash
python3 ./rcs-business-layer/Scene3d/main.py &
sleep  1s
python3 ./rcs-business-layer/RCA/main.py &
sleep 1s
python3 ./rcs-business-layer/Planner/main.py &
sleep 1s
chmod u+x ./rcs-control-unit/build.sh
cd rcs-control-unit
screen -d -m ./build.sh
sleep 180s
cd ..
echo 'ready'
python3 ./rcs-business-layer/Client_Adapter/main.py 
