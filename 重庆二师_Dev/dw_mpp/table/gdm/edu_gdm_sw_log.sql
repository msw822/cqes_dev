/*
#  DESCRIPTION: 
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
set names utf8;
use gdm;
/*
--去重的gdm表上网数据信息表
*/
DROP TABLE IF EXISTS GDM.EDU_GDM_SW_LOG;
CREATE TABLE
IF NOT EXISTS GDM.EDU_GDM_SW_LOG(
  "XH" varchar(50) DEFAULT NULL COMMENT '学号',
  "XM" VARCHAR (255) COMMENT '姓名',
  "XBM" VARCHAR (2) COMMENT '性别码',
  "XBM_MC" VARCHAR (2) COMMENT '性别',
  "RXNY" VARCHAR (6) COMMENT '入学年月',
  "SZNJ" VARCHAR (8) COMMENT '所在年级',
  "SZBH" VARCHAR (50) COMMENT '所在班号',
  "BJMC" VARCHAR (200) COMMENT '班级名称',
  "ZYM" VARCHAR (50) COMMENT '专业码',
  "ZYM_MC" VARCHAR (200) COMMENT '专业名称',
  "SSYXM" VARCHAR (50) COMMENT '所属院校码',
  "SSYXM_MC" VARCHAR (200) COMMENT '所属院校',
  "PYCCM" VARCHAR (50) COMMENT '培养层次码',
  "PYCCM_MC" VARCHAR (200) COMMENT '培养层次',
  "SFZJH" VARCHAR (20) COMMENT '身份证件号',
  "CSRQ" VARCHAR (10) COMMENT '出生日期',
  "LOGIN_TIME" varchar(20) DEFAULT NULL COMMENT '上网开始时间',
  "LOGOUT_TIME" varchar(20) DEFAULT NULL COMMENT '上网结束时间',
  "TIME_LONG" int(11) DEFAULT NULL COMMENT '上网总时长'
)DISTRIBUTED BY('XH') DEFAULT CHARSET=utf8 COMMENT = '上网信息表gdm';
