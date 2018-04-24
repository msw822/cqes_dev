#
#        USAGE: ./ adm.edu_adm_zyhz_da.sh
#
#  DESCRIPTION: 专业平均信息汇总
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
sql="truncate table adm.edu_adm_zyhz_da;
insert into adm.edu_adm_zyhz_da(zym, pjcj, gks, zqcs, cdcs, kkcs, qjcs, xf_zyje, sw_zsc, ts_jsces, pjcj_high, 
                                pjcj_low, gks_high, gks_low, zqcs_high, zqcs_low, xfje_high, xfje_low,
                                swzsc_high, swzsc_low, jsces_high, jsces_low)
select a.zym, a.pjcj, a.gks, b.zqcs, b.cdcs, b.kkcs, b.qjcs, c.xf_zyje, d.sw_zsc, e.ts_jsces, 
       a.pjcj_high, a.pjcj_low,
       a.gks_high, a.gks_low,
       b.zqcs_high, b.zqcs_low,
       c.xfje_high, c.xfje_low,
       d.swzsc_high, d.swzsc_low,
       e.jsces_high, e.jsces_low
 from adm.edu_adm_kc_cj_zyhz_da a
 left join adm.edu_adm_qd_zyhz_da b on a.zym = b.zym
 left join adm.edu_adm_ykt_zy_da c on a.zym = b.zym
 left join adm.edu_adm_swxx_zy d on a.zym = d.zym
 left join adm.edu_adm_ts_jyjl_zyhz_da e on a.zym = e.zym;"

now=`date +%Y-%m-%d:%H:%M:%S`
echo "$now executing:$sql"
    su - mpp -c "gccli $conn -e '$sql'"
status=$?
if [ $status -eq 0 ]; then
    echo "--generated successfully"
else echo "-- generated to fail"
fi
