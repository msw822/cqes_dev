#
#        USAGE: ./ adm.edu_adm_swxx_zy.sh
#
#  DESCRIPTION: 课程成绩个人数据汇总
#
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
sql="TRUNCATE TABLE ADM.EDU_ADM_SWXX_ZY;
INSERT INTO ADM.EDU_ADM_SWXX_ZY(ZYM, SW_ZSC, SWZSC_HIGH, SWZSC_LOW)
SELECT AA.ZYM, AA.SWZSC, BB.SWZSC_HIGH, BB.SWZSC_LOW
FROM
(
	SELECT ZYM, SUM(TIME_LONG)/COUNT(DISTINCT XH) AS SWZSC
	FROM GDM.EDU_GDM_SWXX
	GROUP BY ZYM
) AA
LEFT JOIN
(
	SELECT B1.ZYM, MAX(B1.SWZSC) AS SWZSC_HIGH, MIN(B1.SWZSC) AS SWZSC_LOW
	FROM
	(
	      select xh, zym, sum(time_long) as swzsc
		  from gdm.edu_gdm_swxx
		  where xh is not null
		  group by xh, zym
	) B1
	GROUP BY B1.ZYM
) BB ON AA.ZYM = BB.ZYM"

now=`date +%Y-%m-%d:%H:%M:%S`
echo "$now executing:$sql"
    su - mpp -c "gccli $conn -e '$sql'"
status=$?
if [ $status -eq 0 ]; then
    echo "--generated successfully"
else echo "-- generated to fail"
fi
