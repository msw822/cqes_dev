/*
#  DESCRIPTION: 学生选课信息表
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
DROP TABLE IF EXISTS fdm.edu_fdm_kc_xsxkxx;
CREATE TABLE IF NOT EXISTS fdm.edu_fdm_kc_xsxkxx(
  `KCDM` varchar(64)  COMMENT '课程号',
  `KXH` varchar(64)  COMMENT '课序号',
  `XKNJ` varchar(4)  COMMENT '选课年级',
  `XKXND` varchar(30) NOT NULL COMMENT '选课学年度',
  `JSZGH` varchar(20)  COMMENT '教师职工号',
  `XH` varchar(20) NOT NULL COMMENT '学号',
  `XKKH` varchar(40) NOT NULL COMMENT '选课课号',
  `XKRSXD` int(11)  COMMENT '选课人数限定',
  `XKXQM` varchar(20) NOT NULL COMMENT '选课学期码',
  `SJXKRS` int(11) DEFAULT NULL COMMENT '实际选课人数'
) DISTRIBUTED BY('KCDM') DEFAULT CHARSET=utf8 COMMENT='[选课信息表]规定了选课的基本数据项。';