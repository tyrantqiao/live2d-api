[root@server mysh]# cat nginx_logs.sh 

#!/bin/bash

#日志存储路径
log_path="/home/qiao/server/live2d-api/nginx/log"
#取出昨天的时间
log_date=$(date -d yesterday +%Y-%m-%d)

#将访问日志重命名，标志为昨天的日期
mv ${log_path}/access.log ${log_path}/access_${log_date}.log
#将错误日志重命名，标志为昨天的日期
mv ${log_path}/error.log ${log_path}/error_${log_date}.log

#和docker安装的nginx只有此步操作不同，nginx只带重新打开日志文件的参数，这样可以做到平滑的操作，不会影响nginx的正常运行
#/usr/app/nginx/sbin/nginx -s reopen
cd /home/qiao/server/live2d-api
docker-compose up -d

#只保留最近7天的日志文件，减少硬盘压力
find ${log_path} -type f -name "*.log" -ctime +7 -exec rm -f {} \;

