/*
#  DESCRIPTION: 学生来源信息表
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
DROP TABLE IF EXISTS FDM.EDU_FDM_XS_LYXX;
CREATE TABLE IF NOT EXISTS FDM.EDU_FDM_XS_LYXX (
  "XH" varchar(20) NOT NULL DEFAULT '' COMMENT '学号',
  "YXXMC" varchar(60) DEFAULT NULL COMMENT '原学校名称',
  "YXH" varchar(20) DEFAULT NULL COMMENT '原学号',
  "RXFSM" varchar(10) NOT NULL DEFAULT '' COMMENT '见入学方式代码表如01,10[edu_hb_rxfs]',
  "LYDQM" varchar(10) DEFAULT NULL COMMENT '学生来源地区码,见中华人民共和国行政区划代码表[edu_hb_xzqh]',
  "XSLYM" varchar(10) DEFAULT NULL COMMENT '学生来源码,见学生来源代码表 如001[edu_hb_xsly]',
  "JDFSM" varchar(1) DEFAULT NULL COMMENT '就读方式码[edu_hb_jdfs]',
  "LYGBDQM" varchar(10) DEFAULT NULL COMMENT '来源国别/地区码[edu_hb_gjdq]',
  "SYDM" varchar(10) DEFAULT NULL COMMENT '生源地码[edu_hb_xzqh]',
  "DXWPDW" varchar(60) DEFAULT NULL COMMENT '定向/委培单位',
  "RXQXLM" char(2) DEFAULT NULL COMMENT '入学前最后学历码,见学历代码[edu_hb_xl]',
  "RXQXWM" char(3) DEFAULT NULL COMMENT '入学前最后学位码,见中华人民共和国学位代码[edu_hb_xw]'
)DISTRIBUTED BY('xh') DEFAULT CHARSET=utf8 COMMENT='[学生来源信息表]记录学生的生源地等信息';

