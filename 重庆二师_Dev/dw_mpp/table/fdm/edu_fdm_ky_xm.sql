/*
#  DESCRIPTION: 科研项目信息
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
use FDM;
DROP TABLE IF EXISTS `edu_fdm_ky_xm`;
CREATE TABLE `edu_fdm_ky_xm` (
  `XMBH` varchar(100) NOT NULL COMMENT '项目编号',
  `DWH` varchar(100) DEFAULT NULL COMMENT '单位号',
  `XMMC` varchar(100) NOT NULL COMMENT '项目名称',
  `ZXBH` varchar(64) DEFAULT NULL COMMENT '专项编号',
  `KSRQ` varchar(8) DEFAULT NULL COMMENT '开始日期',
  `JXRQ` varchar(8) DEFAULT NULL COMMENT '结项日期',
  `XMFZRH` varchar(64) DEFAULT NULL COMMENT '项目负责人号,JY/T 1002 JCTB020120',
   XMWTDWM VARCHAR(10) DEFAULT NULL COMMENT '项目委托单位码',
  `XMWTDWMC` varchar(64) DEFAULT NULL COMMENT '项目委托单位,单位名称 JY/T 1002 JCTB010302',
  `XMLYM` char(2) DEFAULT NULL COMMENT '项目来源码,见[edu_hb_xmly]',
  `MJM` char(1) DEFAULT NULL COMMENT '密级码,见[edu_hb_bmdj]',
  `SHJJXYM` char(2) DEFAULT NULL COMMENT '社会经济效益码,JY/T 1001见[edu_hb_shjjxy]',
  `XKLYM` varchar(64) DEFAULT NULL COMMENT '学科领域码,GB/T 13745,取其一、二级分类码,见[edu_hb_xklb]',
  `GJDQM` varchar(64) DEFAULT NULL COMMENT '合作国家/地区码,JY/T 1002,JCTB020110,见[edu_hb_gjdq]',
  `JHWCQKM` char(1) DEFAULT NULL COMMENT '计划完成情况码,JY/T 1001 JHWCQK 计划完成情况代码,见[edu_hb_jhwcqk]',
  `HZXSM` char(1) DEFAULT NULL COMMENT '合作形式码,JY/T 1001见[edu_hb_hzxs]',
  `SSJSLY` varchar(20) DEFAULT NULL COMMENT '所属技术领域',
  `XMPZH` varchar(30) DEFAULT NULL COMMENT '项目批准号',
  `XMLBM` varchar(30) DEFAULT NULL COMMENT '项目类别码,见[eud_hb_xmlb]',
  `XMJBM` char(3) DEFAULT NULL COMMENT '项目级别码,学校自编,GB/T 14946.1－2009 附录A.29',
  `HDLXM` char(2) DEFAULT NULL COMMENT '活动类型码,JY/T 1001 [edu_hb_hdlx]',
  `XMZXZTM` char(1) DEFAULT NULL COMMENT '项目执行状态码JY/T 1001 XMZXZT [edu_hb_xmzxzt]',
  `XMJTXS` varchar(64) DEFAULT NULL COMMENT '项目结题形式',
  `SBRQ` varchar(8) DEFAULT NULL COMMENT '申报日期',
  `LXRQ` varchar(8) DEFAULT NULL COMMENT '立项日期',
  `ZGBM` varchar(100) DEFAULT NULL COMMENT '主管部门',
  `XKMLKJM` char(1) DEFAULT NULL COMMENT '学科门类(科技)码,JY/T 1001 XKMLKJ 学科门类（科技）代码,见[edu_hb_xkml]',
  `SSHYM` char(5) DEFAULT NULL COMMENT '所属行业码,GB/T 4754',
  `DWJSM` varchar(64) DEFAULT NULL COMMENT '单位角色码,见[edu_hb_js]',
  `SBXMH` varchar(64) DEFAULT NULL COMMENT '申报项目号',
  `YQYJCGJXS` varchar(100) DEFAULT NULL COMMENT '预期研究成果及形式',
  `XMZY` varchar(500) DEFAULT NULL COMMENT '项目摘要',
  `XDWH` varchar(100) DEFAULT NULL COMMENT '下达文号',
  `KTRQ` varchar(8) DEFAULT NULL COMMENT '开题日期',
  `SHJJMB` varchar(100) DEFAULT NULL COMMENT '社会经济目标',
  `ZTC` varchar(100) DEFAULT NULL COMMENT '主题词',
  `SSZKT` varchar(100) DEFAULT NULL COMMENT '所属主课题',
  `XMLYDW` varchar(100) DEFAULT NULL COMMENT '项目来源单位',
  `JBM` char(2) DEFAULT NULL COMMENT '项目性质/项目级别,见[edu_hb_jb]表'
)  DEFAULT CHARSET=utf8 COMMENT='[科研项目信息]科研主题信息之一';
-- ----------------------------
-- Records of edu_fac_ky_xm
-- ----------------------------
INSERT INTO `edu_fdm_ky_xm` VALUES ('GY-Z0308', '011900', '建筑工程施工招标研究', null, null, '20160701', '19640711', null, null, null, null, null, null, null, null, null, null, null, null, null, '10', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '60');
INSERT INTO `edu_fdm_ky_xm` VALUES ('GY-Z0307', '011900', '建筑管理方法的研究', null, null, '20160701', '19640712', null, null, null, null, null, null, null, null, null, null, null, null, null, '20', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '70');
