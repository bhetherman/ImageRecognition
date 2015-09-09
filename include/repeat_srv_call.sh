#!/bin/bash
while true
do
 espeak "click"
 rosservice call /rail_segmentation/segment
 sleep 10
done
