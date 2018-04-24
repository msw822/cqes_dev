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
DROP TABLE IF EXISTS edu_gdm_ky_xm_da;
CREATE TABLE IF NOT EXISTS "edu_gdm_ky_xm_da" (
  "XMBH" varchar(100) NOT NULL COMMENT '项目编号',
  "DWH" varchar(100) DEFAULT NULL COMMENT '单位号，见[edu_dim_dw]',
  "DWMC" varchar(150) DEFAULT NULL COMMENT '单位名称',
  "XMMC" varchar(100) NOT NULL COMMENT '项目名称',
  "ZXBH" varchar(64) DEFAULT NULL COMMENT '专项编号',
  "KSRQ" varchar(8) DEFAULT NULL COMMENT '开始日期',
  "JXRQ" varchar(8) DEFAULT NULL COMMENT '结项日期',
  "XMFZRH" varchar(64) DEFAULT NULL COMMENT '项目负责人号,见[edu_fac_ky_xm]',
  "XMWTDWM" varchar(10) DEFAULT NULL COMMENT '项目委托单位码',
  "XMWTDWMC" varchar(64) DEFAULT NULL COMMENT '项目委托单位,单位名称 JY/T 1002 JCTB010302 JCTB010302',
  "XMLYM" char(2) DEFAULT NULL COMMENT '项目来源码，见[edu_hb_xmly]',
  "XMLYM_MC" varchar(20) DEFAULT NULL COMMENT '项目来源码_名称',
  "MJM" char(1) DEFAULT NULL COMMENT '密级码，见[edu_hb_bmdj]',
  "MJM_MC" char(9) DEFAULT NULL COMMENT '密级码_名称',
  "SHJJXYM" char(2) DEFAULT NULL COMMENT '社会经济效益码 见[edu_hb_shjjxy]',
  "SHJJXYM_MC" varchar(60) DEFAULT NULL COMMENT '社会经济效益码_名称',
  "XKLYM" varchar(64) DEFAULT NULL COMMENT '学科领域码,GB/T 13745,取其一、二级分类码',
  "XKLYM_MC" char(1) DEFAULT NULL COMMENT '学科领域码名称',
  "GJDQM" varchar(64) DEFAULT NULL COMMENT '合作国家/地区码，见[edu_hb_gjdq]',
  "GJDQM_MC" char(1) DEFAULT NULL COMMENT '合作国家/地区码_名称',
  "JHWCQKM" char(1) DEFAULT NULL COMMENT '计JHWCQK 计划完成情况代码，见[edu_hb_shjjxy]',
  "JHWCQKM_MC" varchar(20) DEFAULT NULL COMMENT '计划完成情况码_名称',
  "HZXSM" char(1) DEFAULT NULL COMMENT 'HZXS合作形式代码，见[edu_hb_hzxs]',
  "HZXSM_MC" varchar(40) DEFAULT NULL COMMENT '合作形式码名称',
  "SSJSLY" varchar(20) DEFAULT NULL COMMENT '所属技术领域',
  "XMPZH" varchar(30) DEFAULT NULL COMMENT '项目批准号',
  "XMLBM" varchar(30) DEFAULT NULL  COMMENT '项目类别码，见[edu_hb_xmlb]',
  "XMLBM_MC" varchar(20) DEFAULT NULL COMMENT '项目类别码名称',
  "XMJBM" char(3) DEFAULT NULL COMMENT '项目级别码,学校自编,GB/T 14946.1－2009 附录A.29',
  "XMJBM_MC" char(1) DEFAULT NULL COMMENT '项目级别码名称',
  "HDLXM" char(2) DEFAULT NULL COMMENT '活动类型码,JY/T 1001 HDLX活动类型代码',
  "HDLXM_MC" char(20) DEFAULT NULL COMMENT '[edu_hb_hdlx]活动类型码名称',
  "XMZXZTM" char(1) DEFAULT NULL COMMENT '项目执行状态码JY/T 1001 XMZXZT 项目执行状态代码',
  "ZMZXZTM_MC" varchar(10) DEFAULT NULL COMMENT '[edu_hb_xmzxzt]项目执行状态名称',
  "XMJTXS" varchar(64) DEFAULT NULL COMMENT '项目结题形式',
  "SBRQ" varchar(8) DEFAULT NULL COMMENT '申报日期',
  "LXRQ" varchar(8) DEFAULT NULL COMMENT '立项日期',
  "ZGBM" varchar(100) DEFAULT NULL COMMENT '主管部门',
  "XKMLKJM" char(1) DEFAULT NULL COMMENT 'XKMLKJ 学科门类（科技）代码，见[edu_hb_xkml]',
  "XKMLKJM_MC" varchar(50) DEFAULT NULL COMMENT '学科门类(科技)码_名称', 
  "SSHYM" char(5) DEFAULT NULL COMMENT '所属行业码,GB/T 4754',
  "SSHYM_MC" char(1) DEFAULT NULL COMMENT '所属行业码名称',
  "DWJSM" varchar(64) DEFAULT NULL COMMENT '单位角色码，见[edu_hb_js]',
  "DWJSM_MC" varchar(60) DEFAULT NULL COMMENT '单位角色码_名称',
  "SBXMH" varchar(64) DEFAULT NULL COMMENT '申报项目号',
  "YQYJCGJXS" varchar(100) DEFAULT NULL  COMMENT '预期研究成果及形式',
  "XMZY" varchar(500) DEFAULT NULL COMMENT '项目摘要',
  "XDWH" varchar(100) DEFAULT NULL COMMENT '下达文号',
  "KTRQ" varchar(8) DEFAULT NULL COMMENT '开题日期',
  "SHJJMB" varchar(100) DEFAULT NULL COMMENT '社会经济目标',
  "ZTC" varchar(100) DEFAULT NULL COMMENT '主题词',
  "SSZKT" varchar(100) DEFAULT NULL COMMENT '所属主课题',
  "XMLYDW" varchar(100) DEFAULT NULL COMMENT '项目来源单位',
  `JBM` char(2) DEFAULT NULL COMMENT '项目级别码，见[edu_hb_jb]',
  `JBM_MC` varchar(60) DEFAULT NULL COMMENT '项目级别码_名称',
  "JHJFZE" int(4) DEFAULT NULL COMMENT '计划经费总额',
  "XMJFLYM" varchar(2) DEFAULT NULL COMMENT 'XMJFLY 项目经费来源代码，见 [edu_hb_xmjfly]',
  "XMJFLYM_MC" varchar(60) DEFAULT NULL COMMENT '项目经费来源码_名称',
  "BRRQ" varchar(8) DEFAULT NULL COMMENT '拨入日期JY/T 1002 JCTB010203',
  "BKS" bigint(11) DEFAULT NULL COMMENT '拨款数',
  "ZCRQ" varchar(8) DEFAULT NULL COMMENT '支出日期',
  "BFXZDWJF" bigint(11) DEFAULT NULL COMMENT '拨付协作单位经费',
  "BKDW" varchar(100) DEFAULT NULL COMMENT '拨款单位'
)  DEFAULT CHARSET=utf8 COMMENT='[科研-项目宽表]来自父表[edu_fdm_ky_xm]';