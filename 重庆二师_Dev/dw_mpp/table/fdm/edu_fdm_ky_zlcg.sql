/*
#  DESCRIPTION: 专利成果
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
DROP TABLE IF EXISTS `edu_fdm_ky_zlcg`;
CREATE TABLE IF NOT EXISTS `edu_fdm_ky_zlcg` (
  `ZLCGBH` varchar(100) NOT NULL COMMENT '专利成果编号',
  `ZLCGMC` varchar(60) NOT NULL COMMENT '专利成果名称',
  `DWH` varchar(64) DEFAULT NULL COMMENT '单位号',
  `SQBH` varchar(10) DEFAULT NULL COMMENT '申请编号',
  `XKLYM` char(6) DEFAULT NULL COMMENT '学科领域码',
  `ZLLXM` char(1) NOT NULL COMMENT '专利类型码[edu_hb_zllx]',
  `PZRQ` varchar(8) DEFAULT NULL COMMENT '批准日期',
  `PZXSM` char(1) DEFAULT NULL COMMENT '批准形式码',
  `ZLZSBH` varchar(20) DEFAULT NULL COMMENT '专利证书编号',
  `FLZTM` char(1) DEFAULT NULL COMMENT '法律状态码[edu_hb_zlflzt]',
  `JNZLNFRQ` varchar(8) DEFAULT NULL COMMENT '交纳专利年费日期',
  `JNJE` double(8,2) DEFAULT NULL COMMENT '交纳金额',
  `SSXMBH` varchar(64) DEFAULT NULL COMMENT '所属项目编号',
  `GJDQM` varchar(64) DEFAULT NULL COMMENT '国籍/地区码[edu_hb_gjdq]',
  `GJZLZFLH` varchar(20) DEFAULT NULL COMMENT '国际专利主分类号',
  `PCTHZLGJDQM` varchar(64) DEFAULT NULL COMMENT 'PCT 或专利国家/地区码',
  `SQGGH` varchar(20) DEFAULT NULL COMMENT '授权公告号',
  `SQGGRQ` varchar(8) DEFAULT NULL COMMENT '授权公告日期',
  `SQMC` varchar(100) DEFAULT NULL COMMENT '申请名称',
  `ZLDLJG` varchar(64) DEFAULT NULL COMMENT '专利代理机构',
  `ZLDLR` varchar(64) DEFAULT NULL COMMENT '专利代理人',
  `ZLQR` varchar(64) DEFAULT NULL COMMENT '专利权人',
  `ZLZZRQ` varchar(8) DEFAULT NULL COMMENT '专利终止日期',
  `SQRQ` varchar(8) DEFAULT NULL COMMENT '申请日期',
  `FMRS` int(4) DEFAULT NULL COMMENT '发明人数',
  `XSSM` varchar(2000) DEFAULT NULL COMMENT '详细说明'
)  DEFAULT CHARSET=utf8 COMMENT='[edu_fac_ky_zlcg]专利成果';