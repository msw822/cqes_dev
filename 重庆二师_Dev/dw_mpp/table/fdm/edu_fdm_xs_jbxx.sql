/*
#  DESCRIPTION: 学生基本信息表
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
DROP TABLE IF EXISTS FDM.EDU_FDM_XS_JBXX;
CREATE TABLE
IF NOT EXISTS FDM.EDU_FDM_XS_JBXX (
	`XH` VARCHAR(20) NOT NULL COMMENT '学号',
	`XM` VARCHAR (60) COMMENT '姓名',
	`YWXM` VARCHAR (60) COMMENT '英文姓名',
	`XMPY` VARCHAR (60) COMMENT '姓名拼音',
	`CYM` VARCHAR (60) COMMENT '曾用名',
	`XBM` VARCHAR(1) COMMENT '性别码 见表[edu_hb_xb]',
	`CSRQ` VARCHAR (10) COMMENT '出生日期,格式YYYY-MM-DD',
	`CSDM` VARCHAR (10) COMMENT '出生地码 见表[edu_hb_xqzh]',
	`JGM` VARCHAR (6) COMMENT '籍贯码,见[edu_hb_xqzh]',
	`MZM` VARCHAR (2) COMMENT '民族码,中国各民族名称的罗马字母拼写法和代码,见[edu_hb_mz]',
	`GJDQM` VARCHAR (3) COMMENT '国籍/地区码 见表[edu_hb_gjdq]',
	`SFZJLXM` VARCHAR(3) COMMENT '身份证类型码见身份证件类型代码,见表[edu_hb_sfzjlx]',
	`SFZJH` VARCHAR (20) COMMENT '身份证件号',
	`HYZKM` VARCHAR(1) COMMENT '婚姻状况码婚姻状况代码,见[edu_hb_hyzk]',
	`GATQWM` VARCHAR (10) COMMENT '港澳台侨外码,见港澳台侨外代码,见表[edu_hb_gatqw]',
	`ZZMMM` VARCHAR (10) COMMENT '政治面貌码见政治面貌代码,见表[edu_hb_zzmm]',
	`JKZKM` VARCHAR(2) COMMENT '健康状况码见健康状况,见表[edu_hb_jkzk]',
	`XYZJM` VARCHAR(2) COMMENT '宗教信仰码 见宗教信仰码,见表[edu_hb_xyzj]',
	`XXM` VARCHAR(1) COMMENT '血型码,见血型码,见表[edu_hb_xx]',
	`ZP` VARCHAR (2000) COMMENT '照片,存的是照片url',
	`SFZJYXQ` VARCHAR (17) COMMENT '身份证有效期,格式YYYYMMDD-YYYYMMDD',
	`SFDSZN`  VARCHAR(1) COMMENT ' 是否独生子女,1:是,2:否,9:未知',
	`SFZX` VARCHAR(1) COMMENT '是否在校,0:不在校,1：在校',
	`CREATED_TIME` VARCHAR(20) COMMENT '创建时间',
	`MODIFIED_TIME` VARCHAR(20) COMMENT '修改时间'
) DISTRIBUTED BY('XH') DEFAULT CHARSET=utf8 COMMENT='[学生基本信息表]学生主题基础表,全量更新';
