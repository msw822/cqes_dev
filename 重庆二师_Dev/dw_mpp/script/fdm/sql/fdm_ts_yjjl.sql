/*
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: mashaowei@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2018/04/25
#     REVIEWER:
#     REVISION: ---
*/


INSERT INTO fdm.edu_fdm_ts_jyjl
SELECT
	ltk.ZJM,
	gcsml.TM,
	ltk.DZTM,
	ltk.DZTM,
	DATE_FORMAT(ltk.WJSJ,'%Y%m%d %H:%i:%S'),
    DATE_FORMAT(ltk.YGHSJ,'%Y%m%d %H:%i:%S'),
	DZK.XM,
	DATE_FORMAT(ltk.WJSJ,'%Y%m%d %H:%i:%S'),
	ltk.XJCS,
	ltk.LTKSJM,
    NULL

FROM
	ods.tushu_ltk ltk
LEFT OUTER JOIN ods.tushu_gcsml gcsml ON ltk.ZJM = gcsml.ZJM
LEFT OUTER JOIN ods.tushu_dzk dzk ON ltk.DZTM = dzk.DZTM
