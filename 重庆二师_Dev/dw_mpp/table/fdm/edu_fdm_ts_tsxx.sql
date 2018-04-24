/*
#  DESCRIPTION: 图书信息表
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: wang.longfei@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/06/30
#     REVIEWER:
#     REVISION: ---
*/
use fdm;
DROP TABLE IF EXISTS fdm.edu_fdm_ts_tsxx;
CREATE TABLE
IF NOT EXISTS fdm.edu_fdm_ts_tsxx (
	`TSBH` BIGINT (11) NOT NULL COMMENT '图书编号，包括图书、磁带、光盘等学校自编',
	`TSTXM` VARCHAR (30) NOT NULL COMMENT '图书条形码',
	`ZBT` VARCHAR (180) NOT NULL COMMENT '正标题,填写中文或英文',
	`BLBT` VARCHAR (180) COMMENT '并列标题',
	`FBT` VARCHAR (180) COMMENT '副标题',
	`JSGJZ` VARCHAR (30) COMMENT '检索关键字',
	`TSCBH` VARCHAR (30) NOT NULL COMMENT '图书相应的ISBN 等标准出版号',
	`DYZZ` VARCHAR (30) NOT NULL COMMENT '第一作者名称',
	`QTZZ` VARCHAR (90) COMMENT '其他作者',
	`JG` DECIMAL(5,2) COMMENT '单价,外币按汇价折算成人民币,取两位小数,单位：元',
	`WXLXM` VARCHAR(2) COMMENT '文献类型码,见[edu_hb_wxlx]',
	`ZDM` CHAR(1) COMMENT '装订码,见[edu_hb_kwzd]',
	`FLH` VARCHAR(20) COMMENT '分类号',
	`ZGYZM` VARCHAR(3) COMMENT '中国语种码GB/T 4881，见[edu_hb_zgyz]',
	`YZM` VARCHAR (2) COMMENT '语种码GB/T 4880.1，见[edu_hb_yz]',
	`KB` VARCHAR (30) COMMENT '开本',
	`YS` INT(4) COMMENT '页数',
	`BC` VARCHAR (30) COMMENT '版次',
	`TSFJMC` VARCHAR (180) COMMENT '图书附件名称',
	`CSMC` VARCHAR (180) COMMENT '指系列丛书的名称',
	`CSBZ` VARCHAR (180) COMMENT '丛书编者',
	`CBS` VARCHAR (180) COMMENT '出版社名称，多个出版社可并列',
	`CBSJBM` CHAR (1) COMMENT 'JY/T 1001CBSJB,出版社级别码，见[edu_hb_cbsjb]，多个出版社以第一个出版社为准',
	`CBD` VARCHAR (60) COMMENT '出版地',
	`CBRQ` VARCHAR (8) COMMENT '出版日期YYYYMMDD',
	`FXDW` VARCHAR (60) COMMENT '发行单位',
	`BZ` VARCHAR (1000) COMMENT '备注,与图书相关的其他情况说明',
	`TSZTM` VARCHAR (1) COMMENT 'TSQKZT 图书期刊状态代码，见[edu_hb_tsqkzt]'
)DEFAULT CHARSET=utf8 COMMENT ='[图书信息表]图书的基本属性';