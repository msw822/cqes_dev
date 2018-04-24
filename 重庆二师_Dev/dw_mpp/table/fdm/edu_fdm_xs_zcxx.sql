/*
#  DESCRIPTION: 注册信息表
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: bi.yanbo@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/06/29
#     REVIEWER:
#     REVISION: ---
*/
DROP TABLE IF EXISTS FDM.EDU_FDM_XS_ZCXX;
CREATE TABLE
IF NOT EXISTS FDM.EDU_FDM_XS_ZCXX (
  `XH` VARCHAR(20) NOT NULL COMMENT '学号',
  `ZCZKM` VARCHAR(1) 	COMMENT '见注册状况码表[edu_hb_zczk]',
  `ZCRQ`	VARCHAR(8) COMMENT '注册日期,格式YYYYMMDD',
  `BDRQ`	VARCHAR(8) COMMENT '报到日期,格式YYYYMMDD',
  `WZCYY`	VARCHAR(100) COMMENT '未注册原因',
  `WZCBDQX`	VARCHAR(40) COMMENT '未注册/报到去向',
  `SFQJ`	VARCHAR(1) COMMENT '是否请假,0否,1是',
  `XN`	VARCHAR(9) COMMENT '学年(度),格式：YYYY-YYYY,如:2001-2002',
  `XQM`	tinyint(3) COMMENT'学期码,见学期码表[edu_hb_xq]'
)DISTRIBUTED BY('XH') DEFAULT CHARSET=utf8 COMMENT = '[注册信息表]关于学生每个学期注册的信息';
