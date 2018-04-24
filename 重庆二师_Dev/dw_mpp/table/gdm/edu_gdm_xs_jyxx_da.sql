/*
#  DESCRIPTION: 
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

DROP TABLE IF EXISTS GDM.EDU_GDM_XS_JYXX_DA;
CREATE TABLE IF NOT EXISTS GDM.EDU_GDM_XS_JYXX_DA (
  XH VARCHAR(20) NOT NULL COMMENT '学号',
  XM VARCHAR (60) COMMENT '姓名',
  XBM VARCHAR (2) COMMENT '性别码',
  XBM_MC VARCHAR (2) COMMENT '性别',
  RXNY VARCHAR (6) COMMENT '入学年月',
  SZNJ VARCHAR (8) COMMENT '所在年级',
  SZBH VARCHAR (50) COMMENT '所在班号',
  BJMC VARCHAR (200) COMMENT '班级名称',
  ZYM VARCHAR (50) COMMENT '专业码',
  ZYM_MC VARCHAR (200) COMMENT '专业名称',
  SSYXM VARCHAR (50) COMMENT '所属院校码',
  SSYXM_MC VARCHAR (200) COMMENT '所属院校',
  BYNF VARCHAR(10) COMMENT '毕业年份',
  JYLX VARCHAR(10) COMMENT '就业类型(留学/升学/参加工作/未就业)',
  JYDD VARCHAR(100) COMMENT '就业地点',
  JYXZ DECIMAL(10, 2) COMMENT '就业薪资',
  ZYSFDK VARCHAR(10) COMMENT '专业是否对口',
  XZSFMY VARCHAR(10) COMMENT '薪资是否满意'
) DEFAULT CHARSET=utf8 COMMENT='就业信息宽表';