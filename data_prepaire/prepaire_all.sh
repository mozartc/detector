#!/bin/sh
BASE_PATH=/home/lamerman/work/ml/BlindMotionProject
WORK_PATH=/home/lamerman/work/ml/BlindMotionProject/workspace
NUM_EL_GYR_ACC=20
NUM_EL_SPEED=5

rm $WORK_PATH/out-2014-*.csv

/usr/bin/python -u $BASE_PATH/code/detector/data_prepaire/prepaire.py -i $BASE_PATH/Sensors/2014-09-18_SensorDatafile_smooth.csv -o $WORK_PATH/out-2014-09-18.csv --time-delta-events-msec 500 --num-el-gyr-acc $NUM_EL_GYR_ACC --num-el-speed $NUM_EL_SPEED -e $BASE_PATH/Events/20140918/all.json
/usr/bin/python -u $BASE_PATH/code/detector/data_prepaire/prepaire.py -i $BASE_PATH/Sensors/2014-09-17_SensorDatafile_smooth.csv -o $WORK_PATH/out-2014-09-17.csv --time-delta-events-msec 500 --num-el-gyr-acc $NUM_EL_GYR_ACC --num-el-speed $NUM_EL_SPEED -e $BASE_PATH/Events/20140917/all.json
/usr/bin/python -u $BASE_PATH/code/detector/data_prepaire/prepaire.py -i $BASE_PATH/Sensors/2014-12-16_SensorDatafile_smooth.csv -o $WORK_PATH/out-2014-12-16.csv --time-delta-events-msec 500 --num-el-gyr-acc $NUM_EL_GYR_ACC --num-el-speed $NUM_EL_SPEED -e $BASE_PATH/Events/20141216/all.json
/usr/bin/python -u $BASE_PATH/code/detector/data_prepaire/prepaire.py -i $BASE_PATH/Sensors/2014-10-16_SensorDatafile_smooth.csv -o $WORK_PATH/out-2014-10-16.csv --time-delta-events-msec 500 --num-el-gyr-acc $NUM_EL_GYR_ACC --num-el-speed $NUM_EL_SPEED -e $BASE_PATH/Events/20141016/all.json
/usr/bin/python -u $BASE_PATH/code/detector/data_prepaire/prepaire.py -i $BASE_PATH/Sensors/2014-10-17_SensorDatafile_smooth.csv -o $WORK_PATH/out-2014-10-17.csv --time-delta-events-msec 500 --num-el-gyr-acc $NUM_EL_GYR_ACC --num-el-speed $NUM_EL_SPEED -e $BASE_PATH/Events/20141017/all.json
/usr/bin/python -u $BASE_PATH/code/detector/data_prepaire/prepaire.py -i $BASE_PATH/Sensors/2014-11-29_SensorDatafile_smooth.csv -o $WORK_PATH/out-2014-11-29.csv --time-delta-events-msec 500 --num-el-gyr-acc $NUM_EL_GYR_ACC --num-el-speed $NUM_EL_SPEED -e $BASE_PATH/Events/20141129/all.json
/usr/bin/python -u $BASE_PATH/code/detector/data_prepaire/prepaire.py -i $BASE_PATH/Sensors/2015-01-25_SensorDatafile_smooth.csv -o $WORK_PATH/out-2015-01-25.csv --time-delta-events-msec 500 --num-el-gyr-acc $NUM_EL_GYR_ACC --num-el-speed $NUM_EL_SPEED -e $BASE_PATH/Events/20150125/all.json

cat $WORK_PATH/out-2014-*.csv > $WORK_PATH/out.csv
octave -q $BASE_PATH/code/detector/core/prepaire.m $WORK_PATH/out.csv $WORK_PATH/out.mat
