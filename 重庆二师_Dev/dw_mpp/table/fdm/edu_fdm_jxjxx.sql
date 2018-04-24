/*
#  DESCRIPTION: 奖学金信息表
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: li.zhanlei@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/06/30
#     REVIEWER:
#     REVISION: ---
*/
DROP TABLE IF EXISTS FDM.EDU_FDM_JXJXX;
CREATE TABLE IF NOT EXISTS FDM.EDU_FDM_JXJXX(
  "XH" varchar(20) NOT NULL COMMENT '学号',
  "XN" varchar(9) DEFAULT NULL COMMENT '学年(度),格式：YYYY-YYYY,如:2001-2002',
  "XQM" tinyint(3) DEFAULT NULL COMMENT '学期码,见学期码表[edu_hb_xq]',
  "JXJMC" varchar(120) NOT NULL DEFAULT '' COMMENT '奖学金名称',
  "JXJDJ" varchar(20) NOT NULL DEFAULT '' COMMENT '奖学金等级',
  "JXJLXM" varchar(2) NOT NULL DEFAULT '' COMMENT '见奖学金类型码表[edu_hb_jxjlx]',
  "JXJE" decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '奖学金额,单位元',
  "HJNY" varchar(6) NOT NULL DEFAULT '' COMMENT '获奖年月,格式：YYYYMM',
  "FFRQ" varchar(8) NOT NULL DEFAULT '' COMMENT '发放日期,格式：YYYYMMDD',
  "ZRDWGR" varchar(60) NOT NULL DEFAULT '' COMMENT '资助单位/个人,资助奖学金的单位或人名',
  "ZJLYM" varchar(1) DEFAULT NULL COMMENT '资金来源码,见 奖励资助资金来源代码表[edu_hb_jlzzzjly]'
) DISTRIBUTED BY('xh') DEFAULT CHARSET=utf8 COMMENT='[奖学金信息表]学生获得奖学金的相关信息';

