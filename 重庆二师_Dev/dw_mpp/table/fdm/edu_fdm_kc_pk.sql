/*
#  DESCRIPTION: 高校排课信息表
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: wang.longfei@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/06/30
#     REVIEWER:
#     REVISION: ---
*/
use fdm;
DROP TABLE IF EXISTS fdm.edu_fdm_kc_pk;
CREATE TABLE IF NOT EXISTS fdm.edu_fdm_kc_pk (
  `JXBH` varchar(20) NOT NULL COMMENT '教学班号',
  `KCKSDWH` varchar(30) NOT NULL COMMENT '课程开设单位号',
  `KKXND` varchar(30) NOT NULL COMMENT '开课学年度',
  `KKXQM` varchar(64) NOT NULL COMMENT '开课学期码',
  `SKSJ` varchar(20) NOT NULL COMMENT '上课时间，格式yyyy-mm-dd hh:mm:ss',
  `JXDD` varchar(300) NOT NULL COMMENT '教学地点',
  `JXZY` varchar(500) COMMENT '教学资源',
  `KRL` int(4) NOT NULL COMMENT '课容量',
  `XDRS` int(64) NOT NULL COMMENT '修读人数',
  `JSSZXQH` varchar(10) NOT NULL COMMENT '教室所在学区号',
  `XKXQH` varchar(10) NOT NULL COMMENT '选课学区号',
  `XKRSXD` int(64) NOT NULL COMMENT '选课人数限定',
  `XKNJ` varchar(50) NOT NULL COMMENT '选课年级',
  `PKYQ` varchar(1000) COMMENT '排课要求',
  `JSLXM` varchar(64) NOT NULL COMMENT '教师类型码',
  `QSZ` int(2) NOT NULL COMMENT '起始周',
  `ZZZ` int(2) NOT NULL COMMENT '终止周',
  `JSGH` varchar(100) NOT NULL COMMENT '教师工号',
  `JSXM` varchar(50) NOT NULL COMMENT '教师姓名',
  `KCXZM` varchar(64) NOT NULL COMMENT '课程性质码',
  `SKBJH` varchar(50) NOT NULL COMMENT '上课班级号', 
  `JXBMC` varchar(100)  COMMENT '教学班名称',
  `JXTZ` varchar(1000) COMMENT '教学特征',
  `KKSM`  varchar(1000) COMMENT '开课说明'
) DEFAULT CHARSET=utf8 COMMENT='[排课数据表]排课--为分教学班授课课程的编排。';