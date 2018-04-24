/*
#  DESCRIPTION: 困难学生信息表
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
DROP TABLE IF EXISTS FDM.EDU_FDM_XS_KNXSXX;
CREATE TABLE
IF NOT EXISTS FDM.EDU_FDM_XS_KNXSXX (
  `XH` VARCHAR(20) NOT NULL COMMENT '学号',
  `KNCDDM` CHAR(2) COMMENT '困难程度代码，见[edu_hb_kncd]',
  `KNPDXN` VARCHAR(10) NOT NULL DEFAULT '' COMMENT '评定学年,格式：YYYY-YYYY,如:2001-2002',
  `KNSFYX` char(1) COMMENT '是否有效,1:有效,0:否'
)DISTRIBUTED BY('XH') DEFAULT CHARSET=utf8 COMMENT = '[困难学生信息表]困难学生维度表,全量更新';
