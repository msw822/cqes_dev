/*
#  DESCRIPTION: 学籍信息表
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
DROP TABLE IF EXISTS FDM.EDU_FDM_XS_XJXX;
CREATE TABLE IF NOT EXISTS FDM.EDU_FDM_XS_XJXX (
  "XH" varchar(20) NOT NULL COMMENT '学号',
  "RXNY" varchar(8) COMMENT '入学年月,YYYYMM格式',
  "XSLBM" varchar(5) DEFAULT NULL COMMENT '见学生类别码表[edu_hb_xslb]',
  "XZ" decimal(2,1) DEFAULT NULL COMMENT '学制,如2.5',
  "ZYM" varchar(10) DEFAULT NULL COMMENT '专业码,见[edu_hb_bzkzy]',
  "SZBH" varchar(10) DEFAULT NULL COMMENT '所在班号,见',
  "SZNJ" varchar(10) DEFAULT NULL COMMENT '所在年级',
  "XSDQZTM" char(2) DEFAULT NULL COMMENT '学生当前(学籍)状态,见学生当前状态代码表[edu_hb_xsdqzt]',
  "SSXYM" varchar(10) DEFAULT NULL COMMENT '所属学院所系码，见[edu_hb_SSXYM]',
  "XKMLM" varchar(2) DEFAULT NULL COMMENT '学科门类码，见[edu_hb_xkml]',
  "PYFSM" varchar(2) DEFAULT NULL COMMENT '培养方式码，见[edu_hb_pyfs]',
  "YJFX" varchar(100) DEFAULT NULL COMMENT '研究方向',
  "DSH" varchar(20) DEFAULT NULL COMMENT '导师号',
  "HDXLFSM" varchar(1) DEFAULT NULL COMMENT '获得学历方式码，见[edu_hb_hdxlfs]',
  "SFXFZ" varchar(1) DEFAULT NULL COMMENT '是否学分制',
  "PYCCM" varchar(1) DEFAULT NULL COMMENT '培养层次码，见[edu_hb_pycc]',
  "LDFSM" varchar(1) DEFAULT NULL COMMENT '连读方式码，学校自编',
  "CREATED_TIME" varchar(20) DEFAULT NULL COMMENT '创建时间',
  "MODIFIED_TIME" varchar(20) DEFAULT NULL COMMENT '修改时间'
) DISTRIBUTED BY('XH') DEFAULT CHARSET=utf8 COMMENT='[学籍信息表]学生维度信息之一';
