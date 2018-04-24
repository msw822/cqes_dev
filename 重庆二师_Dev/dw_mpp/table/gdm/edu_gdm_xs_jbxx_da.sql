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
DROP TABLE IF EXISTS GDM.EDU_GDM_XS_JBXX_DA;
CREATE TABLE
IF NOT EXISTS GDM.EDU_GDM_XS_JBXX_DA (
  "XH" varchar(20) NOT NULL COMMENT '学号',
  "XM" varchar(60) DEFAULT NULL COMMENT '姓名',
  "XBM" varchar(1) DEFAULT NULL COMMENT '性别码',
  "XBM_MC" varchar(20) DEFAULT NULL COMMENT '[edu_hb_xb]性别名称',
  "CSRQ" varchar(10) DEFAULT NULL COMMENT '出生日期',
  "JGM" varchar(6) DEFAULT NULL COMMENT '籍贯码',
  "JGM_MC" varchar(200) DEFAULT NULL COMMENT '[edu_hb_xzqh]行政区划名称',
  "JGM_SM" varchar(200) DEFAULT NULL COMMENT '[edu_hb_xzqh]省名',
  "MZM" varchar(2) DEFAULT NULL COMMENT '民族码',
  "MZM_MC" varchar(30) DEFAULT NULL COMMENT '[edu_hb_mz]民族名称',
  "GJDQM" varchar(3) DEFAULT NULL COMMENT '国籍地区码',
  "GJDQM_MC" char(1) DEFAULT NULL COMMENT '国籍地区名称',
  "SFZJLXM" varchar(3) DEFAULT NULL COMMENT '身份证件类型码',
  "SFZJM_MC" varchar(50) DEFAULT NULL COMMENT '[EDU_HB_SFZJLX]身份证件名称',
  "SFZJH" varchar(20) DEFAULT NULL COMMENT '身份证件号',
  "HYZKM" varchar(1) DEFAULT NULL COMMENT '婚姻状况码',
  "HYZKM_MC" char(1) DEFAULT NULL COMMENT '[EDU_HB_HYZT]婚姻状况名称',
  "XYZJM" varchar(2) DEFAULT NULL COMMENT '信仰宗教码',
  "ZYZJM_MC" char(1) DEFAULT NULL COMMENT '[EDU_HB_XYZJ]信仰宗教名称',
  "XXM" varchar(1) DEFAULT NULL COMMENT '血型码',
  "XXM_MC" char(1) DEFAULT NULL COMMENT '[EDU_HB_XX]血型名称',
  "SFZJYXQ" varchar(17) DEFAULT NULL COMMENT '身份证件有效期',
  "SFDSZN" varchar(1) DEFAULT NULL COMMENT '是否独生子女',
  "SFZX" varchar(1) DEFAULT NULL COMMENT '是否在校',
  "YXXMC" varchar(60) DEFAULT NULL COMMENT '原学校名称',
  "RXFSM" varchar(10) DEFAULT '' COMMENT '入学方式码',
  "RXFSM_MC" char(1) DEFAULT NULL COMMENT '[EDU_HB_RXFS]入学方式名称',
  "LYDQM" varchar(10) DEFAULT NULL COMMENT '来源地区码',
  "LYDQM_MC" varchar(200) DEFAULT NULL COMMENT '[edu_hb_xzqh]来源地区名称',
  "LYDQM_SM" varchar(200) DEFAULT NULL COMMENT '[edu_hb_xzqh]来源地区省名',
  "SYDM" varchar(10) DEFAULT NULL COMMENT '生源地码',
  "SYDM_MC" varchar(200) DEFAULT NULL COMMENT '[edu_hb_xzqh]生源地名称',
  "SYDM_SM" varchar(200) DEFAULT NULL COMMENT '[edu_hb_xzqh]生源地省份',
  "JDFSM" varchar(1) DEFAULT NULL COMMENT '就读方式码',
  "JDFSM_MC" varchar(10) DEFAULT NULL COMMENT '[edu_hb_jdfs]就读方式名称',
  "LYGBDQM" varchar(10) DEFAULT NULL COMMENT '来源国别地区码',
  "LYGBDQM_MC" char(1) DEFAULT NULL COMMENT '来源国别地区名称',
  "DXWPDW" varchar(60) DEFAULT NULL COMMENT '定向委培单位',
  "RXQXLM" char(2) DEFAULT NULL COMMENT '入学前学历码',
  "RXQXLM_MC" char(1) DEFAULT NULL COMMENT '[EDU_HB_XL]入学前学历名称',
  "RXQXWM" char(3) DEFAULT NULL COMMENT '入学前学位码',
  "RXQXWM_MC" char(1) DEFAULT NULL COMMENT '[EDU_HB_XW]入学前学位名称',
  "RXNY" varchar(8) DEFAULT NULL COMMENT '入学年月',
  "XSLBM" varchar(5) DEFAULT NULL COMMENT '学生类别码',
  "XSLBM_MC" char(1) DEFAULT NULL COMMENT '[EDU_HB_XSLB]学生类别名称',
  "XZ" varchar(15) DEFAULT NULL COMMENT '学制',
  "ZYM" varchar(10) DEFAULT NULL COMMENT '专业码',
  "ZYM_MC" varchar(60) DEFAULT NULL COMMENT '专业名称',
  "SZBH" varchar(10) DEFAULT NULL COMMENT '所在班级',
  "BJMC" varchar(20) DEFAULT NULL COMMENT '[edu_dim_bjxx]班级名称',
  "SZNJ" varchar(10) DEFAULT NULL COMMENT '所在年级',
  "XSDQZTM" char(2) DEFAULT NULL COMMENT '学籍当前状态码',
  "XSDQZTM_MC" varchar(40) DEFAULT NULL COMMENT '[edu_hb_xsdqzt]学籍当前状态名称',
  "SSYXM" varchar(20) DEFAULT NULL COMMENT '所属院系码',
  "SSYXM_MC" varchar(150) DEFAULT NULL COMMENT '所属院系名称',
  "XKMLM" char(1) DEFAULT NULL COMMENT '学科门类码',
  "XKMLM_MC" char(1) DEFAULT NULL  COMMENT '[EDU_HB_XKML]学科门类码',
  "PYFSM" varchar(2) DEFAULT NULL COMMENT '培养方式码',
  "PYFSM_MC" varchar(20) DEFAULT NULL COMMENT '[edu_hb_pyfs]培养方式名称',
  "YJFX" varchar(100) DEFAULT NULL COMMENT '研究方向',
  "DSH" varchar(20) DEFAULT NULL COMMENT '导师号',
  "DSH_XM" char(1) DEFAULT NULL COMMENT '导师姓名',
  "HDXLFSM" varchar(1) DEFAULT NULL COMMENT '获得学历方式码',
  "HDXLFSM_MC" varchar(20) DEFAULT NULL COMMENT '[edu_hb_hdxlfs]获得学历方式名称',
  "PYCCM" varchar(1) DEFAULT NULL COMMENT '培养层次名称',
  "PYCCM_MC" varchar(20) DEFAULT NULL COMMENT '[edu_hb_pycc]培养层次名称',
  "LDFSM" varchar(1) DEFAULT NULL COMMENT '连读方式码',
  "LDFSM_MC" char(1) DEFAULT NULL COMMENT '连读方式名称',
  "LSDWH" varchar(60) DEFAULT NULL COMMENT '[edu_dim_dw]隶属单位号',
  "DWLBM" varchar(40) DEFAULT NULL COMMENT '[edu_dim_dw]单位类别码',
  "DWJB" varchar(1) DEFAULT NULL COMMENT '[edu_dim_dw]单位级别',
  "SSFJH" varchar(100) DEFAULT NULL COMMENT '宿舍房间号',
  "ZZMM"  VARCHAR(20) DEFAULT NULL COMMENT '[EDU_HB_ZZMM]政治面貌',
  "XQH" VARCHAR(2) DEFAULT NULL COMMENT '[EDU_FDM_XQXX]校区号',
  "XQMC" VARCHAR(30) DEFAULT NULL COMMENT '[EDU_FDM_XQXX]校区名称',
  "ZP" VARCHAR (2000) COMMENT '照片,存的是照片url'
)DISTRIBUTED BY('XH') DEFAULT CHARSET=utf8 COMMENT='[EDU_GDM_XS_JBXX_DA]学生信息宽表';
