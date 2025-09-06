#!/bin/bash

LOG_DIR="/home/mishn/logs/"
APP_LOG_FILE="application.log"
SYS_LOG_FILE="system.log"

find $LOG_DIR -name "*.log" -mtime -1	#Find which logs have been changed in the last day



echo "Analysing application.log"
#grep "ERROR" "$LOG_DIR$APP_LOG_FILE"	#Log errors
echo -e "Number of ERRORS "
grep -c "ERROR" "$LOG_DIR$APP_LOG_FILE"	#Number of errors
echo "Number of FATAL ERRORS "
grep -c "FATAL" "$LOG_DIR$APP_LOG_FILE"	#Number of FATAL ERRORS
echo "number of CRITICAL ERRORS "
grep -c "CRITICAL" "$LOG_DIR$APP_LOG_FILE"	#Number of CRITICAL ERRORS


echo -e "\n"
echo "Analysing system.log"
echo "Number of ERRORS "
grep -c "ERROR" "$LOG_DIR$SYS_LOG_FILE"
echo "Number of FATAL ERRORS "
grep -c "FATAL" "$LOG_DIR$SYS_LOG_FILE"
echo "Number of CRITICAL ERRRORS"
grep -c "CRITICAL" "$LOG_DIR$SYS_LOG_FILE"
#grep "CRITICAL" "$LOG_DIR$SYS_LOG_FILE"
