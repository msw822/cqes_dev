/*
#  DESCRIPTION: 学籍异动信息表
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
DROP TABLE IF EXISTS FDM.EDU_FDM_XS_XJYDXX;
CREATE TABLE
IF NOT EXISTS FDM.EDU_FDM_XS_XJYDXX (
	`YDLBM` VARCHAR (20) COMMENT '学籍异动类别代码,见表[edu_hb_xjydlb]',
	`YDRQ` VARCHAR (20) COMMENT '异动日期,格式YYYYMMDD',
	`YDYYM` VARCHAR (20) COMMENT '异动原因码,见表[edu_hb_xjydyy]',
	`SPRQ` VARCHAR (20) COMMENT '审批日期,格式YYYYMMDD',
	`SPWH` VARCHAR (24) COMMENT '审批文号',
	`YDLYXXM` VARCHAR (10) COMMENT '异动来源学校码',
	`YDQXXXM` VARCHAR (10) COMMENT '异动去向学校码',
	`YDSM` VARCHAR (2000) COMMENT '异动说明',
	`YSSYXM` VARCHAR (20) COMMENT '原院系码,见[edu_dim_dw]',
	`YZYM` VARCHAR (20) COMMENT '原专业码,见[edu_dim_zz]',
	`YBH` VARCHAR (50) COMMENT '原班号,学校自编,见[edu_dim_bj]',
	`YNJ` VARCHAR (20) COMMENT '原年级',
    `YXZ` DECIMAL (2, 1) COMMENT '原学制,如2.5',
	`XSSYXM` VARCHAR (10) COMMENT '现院系所码,即单位号,自行编码',
	`XZYM` VARCHAR (20) COMMENT '现专业码,见[edu_dim_zz]',
	`XBH` VARCHAR (50) COMMENT '现班号,见[edu_dim_bj]',
	`XNJ` VARCHAR (20) COMMENT '现年级',
	`XXZ` DECIMAL (4, 1) COMMENT '现学制,如2.5',
	`XH` VARCHAR(20)   COMMENT '学号',
	`SFZJH` VARCHAR (20) COMMENT '身份证件号',
	`SFZXXJ` CHAR (10) COMMENT '是否注销年级',
	`YZYFXDM`	VARCHAR(20) COMMENT'原专业方向代码'
)DEFAULT CHARSET=utf8 COMMENT='[学籍异动信息表]本数据子类规定了学籍异动的相关数据项.';