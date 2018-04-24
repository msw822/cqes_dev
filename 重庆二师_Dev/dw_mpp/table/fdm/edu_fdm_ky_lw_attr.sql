/*
#  DESCRIPTION: 论文基本信息表
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
DROP TABLE IF EXISTS FDM.edu_fdm_ky_lw_attr;
CREATE TABLE IF NOT EXISTS FDM.edu_fdm_ky_lw_attr (
  `LWBH` varchar(100) NOT NULL COMMENT '论文编号',
  `LWZWMC` varchar(100) NOT NULL COMMENT '论文中文名',
  `LWYWMC` varchar(100) DEFAULT NULL COMMENT '论文英文名',
  `DWH` varchar(64) DEFAULT NULL COMMENT '单位号,见[edu_dw_dim]',
  `LWLXM` char(2) DEFAULT NULL COMMENT '论文类型码,见HDLX活动类型代码表[edu_hb_hdlx]',
  `LZLBM` char(2) DEFAULT NULL COMMENT '论著类别码,见[edu_hb_lzlb]',
  `XKLYM` varchar(20) DEFAULT NULL COMMENT '学科领域码,见[edu_hb_xklb]',
  `XKMLKJM` varchar(20) DEFAULT NULL COMMENT '学科门类(科技)码,见[edu_hb_xkml]',
  `XMLYM` varchar(20) DEFAULT NULL COMMENT '项目来源码,见[edu_hb_xmly]',
  `ZGYZM` varchar(20) DEFAULT NULL COMMENT '中国语种码,见[edu_hb_zgyz]',
  `YZM` varchar(20) DEFAULT NULL COMMENT '语种码,见[edu_hb_yz]',
  `SSXMBH` varchar(60) DEFAULT NULL COMMENT '所属项目编号',
  `SSJSLY` varchar(60) DEFAULT NULL COMMENT '所属技术领域',
  `LZSLQKM` char(1) DEFAULT NULL COMMENT '论著收录情况码,',
  `QTSLQK` varchar(100) DEFAULT NULL COMMENT '其他收录情况',
  `SLSJ` date DEFAULT NULL COMMENT '收录时间',
  `KWMC` varchar(180) DEFAULT NULL COMMENT '刊物名称',
  `FBRQ` date DEFAULT NULL COMMENT '发表日期',
  `CBH` varchar(64) DEFAULT NULL COMMENT '出版号',
  `GJDQM` varchar(64) DEFAULT NULL COMMENT '国家/地区码,见[edu_hb_gjdq]',
  `KWJBM` char(2) DEFAULT NULL COMMENT '刊物级别码,见[edu_hb_kwjb]',
  `NH` int(4) DEFAULT NULL COMMENT '年号',
  `JH` int(10) DEFAULT NULL COMMENT '卷号',
  `QH` varchar(20) DEFAULT NULL COMMENT '期号',
  `ZQH` varchar(20) DEFAULT NULL COMMENT '总期号',
  `QSYH` int(10) DEFAULT NULL COMMENT '起始页号',
  `CBSJBM` varchar(64) DEFAULT NULL COMMENT '出版社级别码,见[edu_hb_cjbjb]',
  `KWBH` varchar(64) DEFAULT NULL COMMENT '刊物编号',
  `KWLXM` char(10) DEFAULT NULL COMMENT '刊物类型码',
  `ISSN` varchar(200) DEFAULT NULL COMMENT '国际标准期刊号'
) DEFAULT CHARSET=utf8 COMMENT='[论文基本信息表]科研主题模型之一';
