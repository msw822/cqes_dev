/*
#  DESCRIPTION: 论文信息
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
DROP TABLE IF EXISTS `edu_fdm_ky_lw`;
CREATE TABLE `edu_fdm_ky_lw` (
  `LWBH` varchar(10) NOT NULL COMMENT '论文编号',
  `LWZWMC` varchar(60) NOT NULL COMMENT '论文中文名',
  `LWYWMC` varchar(180) DEFAULT NULL COMMENT '论文英文名',
  `DWH` varchar(64) DEFAULT NULL COMMENT '单位号',
  `LWLXM` char(2) DEFAULT NULL COMMENT '论文类型码,见[edu_hb_hdlx]',
  `LZLBM` char(2) DEFAULT NULL COMMENT '论著类别码,见[edu_hb_lzlb]',
  `XKLYM` varchar(20) DEFAULT NULL COMMENT '学科领域码,见[edu_hb_xklb]',
  `XKMLKJM` varchar(20) DEFAULT NULL COMMENT '学科门类(科技)码,见[edu_hb_xkml]',
  `XMLYM` varchar(20) DEFAULT NULL COMMENT '项目来源码,见[edu_hb_xmly]',
  `ZGYZM` varchar(20) DEFAULT NULL COMMENT '中国语种码,见[edu_hb_zgyz]',
  `YZM` varchar(20) DEFAULT NULL COMMENT '语种码,见[edu_hb_yz]',
  `SSXMBH` varchar(60) DEFAULT NULL COMMENT '所属项目编号',
  `SSJSLY` varchar(60) DEFAULT NULL COMMENT '所属技术领域',
  `LZSLQKM` char(1) DEFAULT NULL COMMENT '论著收录情况码,学校自编',
  `QTSLQK` varchar(100) DEFAULT NULL COMMENT '其他收录情况,自述',
  `SLSJ` VARCHAR(20) DEFAULT NULL COMMENT '收录时间'
)DEFAULT CHARSET=utf8 COMMENT='[论文信息]科研主题模型之一';