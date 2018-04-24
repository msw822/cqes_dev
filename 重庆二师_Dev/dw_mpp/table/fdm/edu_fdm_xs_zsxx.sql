/*
#  DESCRIPTION: 住宿信息表
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
DROP TABLE IF EXISTS FDM.EDU_FDM_XS_ZSXX;
CREATE TABLE
IF NOT EXISTS FDM.EDU_FDM_XS_ZSXX (
	`XH` VARCHAR(20) NOT NULL COMMENT '学号',
	`XQH` VARCHAR (60) DEFAULT NULL COMMENT '校区号,学校自编,参考[edu_dim_xqxx]',
	`JZWH` VARCHAR (60) DEFAULT NULL COMMENT '建筑物号,学校自编,宿舍区',
	`SSFJH` VARCHAR (100) DEFAULT NULL COMMENT '宿舍房间号',
	`CWH` VARCHAR (2) COMMENT '床位号',
	`SSDH` VARCHAR (20) DEFAULT NULL COMMENT '宿舍电话',
	`RZRQ` VARCHAR (8) COMMENT '入住日期,格式YYYYMMDD',
	`QCRQ` VARCHAR (8) COMMENT '迁出日期,格式YYYYMMDD',
	`XWZZ` VARCHAR (60) COMMENT '校外住址,指包括省（自治区、直辖市）/地（市、州）/县（区、旗）/乡（镇）/街（村）/门牌号的详细地址',
	`ZCDH` VARCHAR (30) COMMENT '住处电话',
	`SSQ` VARCHAR (60) COMMENT '宿舍区',
	`FPRQ` VARCHAR (8) COMMENT '分配日期,格式YYYYMMDD'
)DISTRIBUTED BY('XH') DEFAULT CHARSET=utf8 COMMENT = '[住宿信息表]住宿基础表';
