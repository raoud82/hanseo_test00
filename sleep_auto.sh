#!/bin/sh

PID_FILE=$HOME/sleep_auto.pid
LOG_FILE=$HOME/sleep_auto.log
TIME=$(date +%Y-%m-%d\ %H:%M:%S)
CMD=sleep

start() {
#	if [ -f "$PID_FILE" ] && [ ! -z "$(cat $PID_FILE)" ]; then
#	if [ -f "$PID_FILE" ] && [ -n "$(cat $PID_FILE)" ]; then
	if [ -f "$PID_FILE" ]; then
		echo "Serivce already runnng.." >&2
	else
		$CMD 1000 &

		pid=$(pgrep -x $CMD)
		echo $pid > $PID_FILE
		echo "Starting service. [ pid : $pid ]" 
		echo "[ $TIME ] :: Run Sleep Program" >> $LOG_FILE
	fi
}

stop() {
#	if [ -f "$PID_FILE" ] && [ ! -z "$(cat $PID_FILE)" ]; then
#	if [ -f "$PID_FILE" ] && [ -n "$(cat $PID_FILE)" ]; then
	if [ -f "$PID_FILE" ]; then
		echo "Stopping service."
		echo "[ $TIME ] :: Stopping service." >> $LOG_FILE
		kill -9 $(cat $PID_FILE) && rm -r $PID_FILE
	else
		echo "Service not running"
	fi
}

status() {
	pid_list=$(pgrep -l sleep)
#	if [ "$pid_list" = "" ]; then
	if [ -z "$pid_list" ]; then
		echo "No Service.."
	else	
		echo "$pid_list"
	fi
}

delete_logfile() {
	if [ ! -f "$LOG_FILE" ]; then
		echo "Can't found $LOG_FILE"
		exit 1
	else
	#	local SURE
		echo "Do you really remove $LOG_FILE(yes/no)?"
		read SURE
		if [ "$SURE" = "yes" ]; then
			rm -f $LOG_FILE
			echo "Done.."
		fi
	fi		
}

case "$1" in
	start) 
		start
		;;
	stop)
		stop
		;;
	status)
		status
		;;
	del_log)
		delete_logfile
		;;
	*)
		echo "Usage:: $0 {start|stop|staus|del_log}"
		;;
esac

