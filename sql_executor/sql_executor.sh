#!/bin/sh
#sql executor
#author:ctrlzhang
#date:2016/05/23

user=
password=
db=
sql_file=want_to_execute.sql

#decalre associative array
#key is ip and value is port
declare -A ports
ports=(
[1.2.3.4]=3306
[1.2.3.5]=3306
[1.2.3.6]=3306
)

function do_task() {
	for ip in ${!ports[@]}
	do
		cmd="source ${sql_file}"
		execute_sql $ip ${ports[$ip]}
	done
}

function execute_sql() {
	ip=$1
	port=$2
	echo $ip $port
	#mysql -u$user -P$port -D$db -h$ip -p$password -e "$cmd"
}

###############################
do_task
