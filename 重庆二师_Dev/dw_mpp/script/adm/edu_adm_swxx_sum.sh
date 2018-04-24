#
#        USAGE:
#
#  DESCRIPTION: 
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: bi.yanbo@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/06/30
#     REVIEWER:
#     REVISION: ---

#!/usr/bin/env bash
base=$(dirname $0)
conn=$1
sql="truncate table adm.edu_adm_swxx_sum;
insert into adm.edu_adm_swxx_sum(xh, zym, zym_mc, ssyxm, ssyxm_mc, sw_zsc, sw_yjsc, sw_rjsc, sw_syll)
select a.xh, a.zym, a.zym_mc, a.ssyxm, a.ssyxm_mc, a.swzsc as swzsc, a.yjswsc as yjswsc, a.rjswsc as rjswsc, b.total_bytes
from 
( 
    select xh, zym, zym_mc, ssyxm, ssyxm_mc,
         ifnull(sum(time_long), 0) as swzsc, 
		 sum(time_long)/period_diff(to_char(str_to_date(max(logout_time), '%Y-%m-%d'), 'yyyyMM'), to_char(str_to_date(min(login_time), '%Y-%m-%d'),'yyyyMM')) as yjswsc,
		 sum(time_long)/period_diff(to_char(str_to_date(max(logout_time), '%Y-%m-%d'), 'yyyyMM'), to_char(str_to_date(min(login_time), '%Y-%m-%d'), 'yyyyMM'))/30 as rjswsc
    from gdm.edu_gdm_swxx
    where xh is not null
    group by xh, zym, zym_mc, ssyxm, ssyxm_mc
) a
left join 
(
	select xh, sum(total_bytes)/1024/1024/1024 as total_bytes
	from fdm.edu_fdm_swxx
	group by xh
) b
on a.xh = b.xh"

now=`date +%Y-%m-%d:%H:%M:%S`
echo "$now executing:$sql"
    su - mpp -c "gccli $conn -e '$sql'"
status=$?
if [ $status -eq 0 ]; then
    echo "--generated successfully"
else echo "-- generated to fail"
fi
