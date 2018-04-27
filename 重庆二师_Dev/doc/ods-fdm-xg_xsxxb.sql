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
#      CREATED: 2018/04/27
#     REVIEWER:
#     REVISION: ---
*/

/*fdm 学生基本信息表插入语句 */

TRUNCATE table fdm.edu_fdm_xs_jbxx;
INSERT INTO fdm.edu_fdm_xs_jbxx SELECT
	xh,
	xm,
	NULL,
	xmpy,
	cym,
	xb,
	csrq,
	jg,
	jg,
	mz,
	hkszd,
	NULL,
	sfzh,
	sfjh,
	NULL,
	zzmm,
	jkzk,
	zjdm,
	xx,
	NULL,
	NULL,
	NULL,
	sfzx,
	NULL,
	NULL
FROM
	ods.xg_XSXXB
    
   

/*fdm 学生学籍信息表插入语句 */

TRUNCATE table fdm.edu_fdm_xs_xjxx;   
INSERT INTO fdm.edu_fdm_xs_xjxx 
SELECT
	XH,
	RXRQ,
	XSLB,
	XZ,
	ZYDM,
	BJDM,
	NJ,
	NULL,
	XYDM,
	NULL,
	PYCC,
	ZYFX,
	NULL,
	NULL,
	XXXS,
	PYCC,
	NULL,
	NULL,
	NULL
FROM
	ods.xg_xsxxb;