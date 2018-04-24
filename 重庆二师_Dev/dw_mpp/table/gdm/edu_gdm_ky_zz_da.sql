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
#      CREATED: 2017/06/29
#     REVIEWER:--
#     REVISION: ---
*/
use gdm;
DROP TABLE IF EXISTS edu_gdm_ky_zz_da;
CREATE TABLE IF NOT EXISTS "edu_gdm_ky_zz_da" (
  `ZZBH` varchar(100) NOT NULL COMMENT '著作编号,学校统一编写的科技著作序号',
  `ZZZWMC` varchar(60) DEFAULT NULL COMMENT '著作中文名称',
  `ZZYWMC` varchar(60) DEFAULT NULL COMMENT '著作英文名称',
  `DWH_ZZ` varchar(64) DEFAULT NULL COMMENT '单位号，见[edu_dim_dw]',
  `DWMC_ZZ` varchar(64) DEFAULT NULL COMMENT '单位名称',
  `XKLYM` varchar(10) DEFAULT NULL COMMENT '学科领域码 取其一、二级分类代码，见[edu_hb_xklb]',
  `XKLYM_MC` VARCHAR(64) DEFAULT NULL COMMENT '[edu_hb_xmly]学科领域码_名称',
  `XMLYM` varchar(64) DEFAULT NULL COMMENT '项目来源码，见[edu_hb_xmly]',
  `XMLYM_MC` varchar(64) DEFAULT NULL COMMENT '项目来源码',
  `LZLBM` char(2) DEFAULT NULL COMMENT '论著类别代码,见[edu_hb_lzlb]',
  `LZLBM_MC` char(2) DEFAULT NULL COMMENT '论著类别码_名称',
  `ZGYZM` char(3) DEFAULT NULL COMMENT '中国语种码,GB/T 4881,采用三位数字代码，见[edu_hb_zgyzm]',
  `ZGYZM_MC` char(3) DEFAULT NULL COMMENT '中国语种码_名称',
  `YZM` char(2) DEFAULT NULL COMMENT '语种码,GB/T 4880.1，见[edu_hb_zym]',
  `YZM_MC` char(2) DEFAULT NULL COMMENT '语种码_名称',
  `CBS` varchar(100) DEFAULT NULL COMMENT '出版社',
  `CBSJBM` varchar(64) DEFAULT NULL COMMENT '出版社级别码，见[edu_hb_cbsjb]',
  `CBSJBM_MC` varchar(64) DEFAULT NULL COMMENT '出版社级别码_名称',
  `CBRQ` VARCHAR(8) DEFAULT NULL COMMENT '出版日期',
  `CBH` varchar(100) DEFAULT NULL COMMENT '出版号',
  `ZZZS` int(4) DEFAULT NULL COMMENT '著作字数',
  `SSXMBH` varchar(64) DEFAULT NULL COMMENT '所属项目编号,GXKY010101,若是某项目的成果，填写该项目编号，否则为空',
  `ISBNH` varchar(64) DEFAULT NULL COMMENT 'ISBN 号,JY/T 1002 JCBX040107',
  `YJXK` varchar(64) DEFAULT NULL COMMENT '一级学科',
  `XXSM` varchar(2000) DEFAULT NULL COMMENT '详细说明',
  `XM` varchar(100) DEFAULT NULL COMMENT '姓名',
  `ZC` varchar(20) DEFAULT NULL COMMENT '职称',
  `DWH_RY` varchar(100) DEFAULT NULL COMMENT '单位号',
  `DWMC_RY` varchar(100) DEFAULT NULL COMMENT '单位名称',
  `GZL` DECIMAL(6,2) DEFAULT NULL COMMENT '工作量,个人参与项目的工作量比例，单位：％',
  `JSM` char(3) DEFAULT NULL COMMENT '角色码,JY/T 1001 JS 角色代码',
  `JSM_MC` varchar(20) DEFAULT NULL COMMENT '[edu_hb_js]角色码_名称',
  `RYLXM` varchar(64) DEFAULT NULL COMMENT '人员类型码,自编',
  `RYLXMC` varchar(64) DEFAULT NULL COMMENT '人员类型,学生,校内老师,校外老师'
)  DEFAULT CHARSET=utf8 COMMENT='[科研-著作宽表]来自父表[edu_fdm_ky_zz]';