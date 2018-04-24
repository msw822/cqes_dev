/*
#  DESCRIPTION: 论文刊物发表信息
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: li.zhanlei@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/06/29
#     REVIEWER:
#     REVISION: ---
*/
set names utf8;
use fdm;
DROP TABLE IF EXISTS `edu_fdm_ky_lwfb`;
CREATE TABLE `edu_fdm_ky_lwfb` (
  `KWMC` varchar(180) DEFAULT NULL COMMENT '刊物名称',
  `FBRQ` VARCHAR(20) DEFAULT NULL COMMENT '发表日期',
  `CBH` varchar(64) DEFAULT NULL COMMENT '出版号',
  `GJDQM` varchar(64) DEFAULT NULL COMMENT '国家/地区码JY/T 1002 JCTB020110,见[edu_hb_gjdq]',
  `KWJBM` char(2) DEFAULT NULL COMMENT 'KWJB刊物级别代码,JY/T 1001,见[edu_hb_kwjb]',
  `NH` int(4) DEFAULT NULL COMMENT '年号',
  `JH` int(10) DEFAULT NULL COMMENT '卷号',
  `QH` varchar(20) DEFAULT NULL COMMENT '期号',
  `ZQH` varchar(20) DEFAULT NULL COMMENT '总期号',
  `QSYH` BIGINT(11) DEFAULT NULL COMMENT '起始页号,论文在发表刊物中的起始页数，单位：页',
  `CBSJBM` varchar(64) DEFAULT NULL COMMENT '出版社级别码,见[edu_hb_cbsjb]',
  `KWBH` varchar(64) DEFAULT NULL COMMENT '刊物编号,JY/T 1002  JCBX040201',
  `KWLXM` char(10) DEFAULT NULL COMMENT '刊物类型码,JY/T 1002 JCBX040217',
  `LWBH` varchar(10) NOT NULL COMMENT '论文编号',
  `ISSN` varchar(200) DEFAULT NULL COMMENT '国际标准期刊号'
)DEFAULT CHARSET=utf8 COMMENT='[论文刊物发表信息]科研主题信息之一';