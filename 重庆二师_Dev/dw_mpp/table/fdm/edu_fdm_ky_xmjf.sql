/*
#  DESCRIPTION: 项目经费信息
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
DROP TABLE IF EXISTS `edu_fdm_ky_xmjf`;
CREATE TABLE `edu_fdm_ky_xmjf` (
  `JHJFZE` BIGINT(11) DEFAULT NULL COMMENT '计划经费总额',
  `XMJFLYM` char(2) DEFAULT NULL COMMENT '项目经费来源码,JY/T 1001XMJFLY 项目经费来源代码[edu_hb_xmjfly]',
  `BRRQ` VARCHAR(8) DEFAULT NULL COMMENT '拨入日期JY/T 1002 JCTB010203',
  `BKS` BIGINT(11) DEFAULT NULL COMMENT '拨款数',
  `ZCRQ` VARCHAR(8) DEFAULT NULL COMMENT '支出日期',
  `BFXZDWJF` BIGINT(11) DEFAULT NULL COMMENT '拨付协作单位经费',
  `XMPZBH` varchar(64) DEFAULT NULL COMMENT '项目凭证编号,GXCW020201',
  `JBRXM` varchar(100) DEFAULT NULL COMMENT '经办人姓名',
  `XMBH` varchar(100) NOT NULL COMMENT '项目编号',
  `BKDW` varchar(100) DEFAULT NULL COMMENT '拨款单位',
  `BZ` varchar(500) DEFAULT NULL COMMENT '备注'
)DEFAULT CHARSET=utf8 COMMENT='项目经费信息';