/*
#  DESCRIPTION: 学生成绩宽表 gdm层
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
use gdm;
DROP TABLE IF EXISTS gdm.edu_gdm_kc_kccj_da;
CREATE TABLE IF NOT EXISTS gdm.edu_gdm_kc_kccj_da (
  `XN` varchar(30) DEFAULT NULL COMMENT '学年',
  `XQM` varchar(64) DEFAULT NULL COMMENT '学期码', 
  `XQM_MC` varchar(10) DEFAULT NULL COMMENT '[edu_hb_xq]学期名称',
  `XM` varchar(100) DEFAULT NULL COMMENT '姓名', 
  `XH` varchar(20) DEFAULT NULL COMMENT '学号',
  `KCH` varchar(256) COMMENT '课程号',
  `KCMC` varchar(256) DEFAULT NULL COMMENT '课程名称',
  `KSFSM` varchar(64) COMMENT '考试方式码',
  `KSFSM_MC` varchar(10) DEFAULT NULL COMMENT '[edu_hb_ksfs]考试方式名称',
  `KSXZM` varchar(64) COMMENT '考试性质码',
  `KSXZM_MC` varchar(10) DEFAULT NULL COMMENT '[edu_hb_ksxz]考试性质名称',
  `KSXSM` varchar(64) COMMENT '考试形式码',
  `KSXSM_MC` varchar(10) DEFAULT NULL COMMENT '[edu_hb_ksxs]考试形式名称',
  `PSCJ` varchar(20) COMMENT '平时成绩',
  `ZSCJ` decimal(4,1) DEFAULT NULL COMMENT '折算成绩',
  `KCCJ` varchar(10) COMMENT '课程成绩',
  `KCCJ_JG` decimal(4,1) DEFAULT NULL COMMENT '根据ZSCJ、KCCJ的规则计算获得的学分',
  `XF` decimal(5,1) DEFAULT NULL COMMENT '课程表-学分',
  `XF_HD` decimal(5,1) DEFAULT NULL COMMENT '学分获得(根据ZSCJ、KCCJ的规则计算获得的)',
  `XS` decimal(5,1) DEFAULT NULL COMMENT '课程表-学时',
  `PM` int(4) COMMENT '成绩排名',
  `JD` decimal(5,2) DEFAULT NULL COMMENT '课程表-绩点',
  `XBM` varchar(1) DEFAULT NULL COMMENT '性别码',
  "XBM_MC" varchar(20) DEFAULT NULL COMMENT '性别名称',
  "JGM" varchar(6) DEFAULT NULL COMMENT '籍贯码',
  "JGM_MC" varchar(200) DEFAULT NULL COMMENT '行政区划名称',
  "JGM_SM" varchar(200) DEFAULT NULL COMMENT '省名',
  "SFZJH" varchar(20) DEFAULT NULL COMMENT '身份证件号',
  "XXM" char(2) DEFAULT NULL COMMENT '血型码',
  "XXM_MC" char(1) DEFAULT NULL COMMENT '血型名称',
  "SFDSZN" varchar(1) DEFAULT NULL COMMENT '是否独生子女',
  "YXXMC" varchar(60) DEFAULT NULL COMMENT '原学校名称',
  "RXFSM" varchar(10) DEFAULT '' COMMENT '入学方式码',
  "RXFSM_MC" char(1) DEFAULT NULL COMMENT '入学方式名称',
  "LYDQM" varchar(10) DEFAULT NULL COMMENT '来源地区码',
  "LYDQM_MC" varchar(200) DEFAULT NULL COMMENT '来源地区名称',
  "LYDQM_SM" varchar(200) DEFAULT NULL COMMENT '来源地区省名',
  "RXNY" varchar(8) DEFAULT NULL COMMENT '入学年月',
  "XZ" varchar(15) DEFAULT NULL COMMENT '学制',
  `ZYM` varchar(10) DEFAULT NULL COMMENT '专业码',
  `ZYM_MC` varchar(60) DEFAULT NULL COMMENT '专业名称',
  `SZBH` varchar(10) DEFAULT NULL COMMENT '所在班号',
  "BJMC" varchar(20) DEFAULT NULL COMMENT '班级名称',
  `SZNJ` varchar(10) DEFAULT NULL COMMENT '所在年级',
  `SSXYM` varchar(20) DEFAULT NULL COMMENT '所在院系码',
  "PYCCM" varchar(1) DEFAULT NULL COMMENT '培养层次名称',
  "PYCCM_MC" varchar(20) DEFAULT NULL COMMENT '培养层次名称'
) DEFAULT CHARSET=utf8 COMMENT='课程成绩宽表';  