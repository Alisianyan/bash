pid_process1=`while true; do echo 1 > /dev/null; done &`
pid_process2=`while true; do echo 2 > /dev/null; done &`
###посмотреть использование ЦПУ - top
su -c "renice -n 19 -p $pid_process1"
##сравнить по top кол-во использованной CPU