#!/bin/sh
#usage: ./file_dispatcher.sh

src_user=
src_password=
src_ip=
dst_user=
dst_password=
dst_ip=
src_path=
dst_path=
filename=db_manager.sh

expect ./file_dispatcher.exp $src_user $src_password $src_ip $dst_user $dst_password $dst_ip $src_path $dst_path $filename