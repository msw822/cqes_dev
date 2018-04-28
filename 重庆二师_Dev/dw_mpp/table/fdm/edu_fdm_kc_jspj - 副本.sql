/*
#  DESCRIPTION: 教师评价信息表
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
DROP TABLE IF EXISTS fdm.edu_fdm_kc_jspj;
CREATE TABLE IF NOT EXISTS fdm.edu_fdm_kc_jspj(
  `PJNR` varchar(1000)  COMMENT '评价内容',
  `KCH` varchar(256) NOT NULL COMMENT '课程号',
  `XH` varchar(20)  COMMENT '学号',
  `XN` varchar(30) NOT NULL COMMENT '学年',
  `XQ` varchar(1) NOT NULL COMMENT '学期',
  `PJH` varchar(20) NOT NULL COMMENT '评教号',
  `PJSJ` varchar(20) NOT NULL COMMENT '评教时间，格式yyyy-mm-dd hh:mm:ss',
  `DJ` varchar(20) NOT NULL COMMENT '等级',
  `PF` int(11) NOT NULL COMMENT '评分',
  `JGH` varchar(100)  COMMENT '教工号'
) DISTRIBUTED BY('KCH') DEFAULT CHARSET=utf8 COMMENT='[教师评价表]规定了教学评价的基本数据项，和排课表、选课表等有关联。';