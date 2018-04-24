/*
#  DESCRIPTION: 科研论著信息
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
use fdm;
DROP TABLE IF EXISTS `edu_fdm_ky_zz`;
CREATE TABLE `edu_fdm_ky_zz` (
  `ZZBH` varchar(100) NOT NULL COMMENT '著作编号,学校统一编写的科技著作序号',
  `ZZZWMC` varchar(60) DEFAULT NULL COMMENT '著作中文名称',
  `ZZYWMC` varchar(60) DEFAULT NULL COMMENT '著作英文名称',
  `DWH` varchar(64) DEFAULT NULL COMMENT '单位号',
  `XKLYM` varchar(64) DEFAULT NULL COMMENT '学科领域码 取其一、二级分类代码[edu_hb_xklb]',
  `XMLYM` varchar(64) DEFAULT NULL COMMENT '项目来源码[edu_hb_xmly]',
  `LZLBM` char(2) DEFAULT NULL COMMENT '论著类别码,JY/T 1001 LZLB 论著类别代码[edu_hb_lzlb]',
  `ZGYZM` char(3) DEFAULT NULL COMMENT '中国语种码,GB/T 4881,采用三位数字代码[edu_hb_zgyz]',
  `YZM` char(2) DEFAULT NULL COMMENT '语种码,GB/T 4880.1[edu_hb_yz]',
  `CBS` varchar(100) DEFAULT NULL COMMENT '出版社',
  `CBSJBM` char(1) DEFAULT NULL COMMENT '出版社级别码[edu_hb_cbsjb]',
  `CBRQ` VARCHAR(8) DEFAULT NULL COMMENT '出版日期',
  `CBH` varchar(100) DEFAULT NULL COMMENT '出版号',
  `ZZZS` int(4) DEFAULT NULL COMMENT '著作字数',
  `SSXMBH` varchar(64) DEFAULT NULL COMMENT '所属项目编号,GXKY010101,若是某项目的成果，填写该项目编号，否则为空',
  `ISBNH` varchar(64) DEFAULT NULL COMMENT 'ISBN 号,JY/T 1002 JCBX040107',
  `YJXK` varchar(64) DEFAULT NULL COMMENT '一级学科',
  `XXSM` varchar(2000) DEFAULT NULL COMMENT '详细说明'
) DEFAULT CHARSET=utf8 COMMENT='[edu_fac_ky_zz]科研论著信息';