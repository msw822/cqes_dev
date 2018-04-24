/*
#  DESCRIPTION: 荣誉信息表-学生教职工
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
DROP TABLE IF EXISTS FDM.EDU_FDM_RYXX;
CREATE TABLE IF NOT EXISTS FDM.EDU_FDM_RYXX (
  "XH" varchar(20) NOT NULL COMMENT '学号/教工号',
  "XN" varchar(9) DEFAULT NULL COMMENT '学年(度),格式：YYYY-YYYY,如:2001-2002',
  "SFZJH" varchar(20) DEFAULT NULL COMMENT '身份证件号',
  "XM" varchar(60) DEFAULT NULL COMMENT '姓名',
  "YWXM" varchar(60) DEFAULT NULL COMMENT '英文姓名',
  "XBM" char(1) DEFAULT NULL COMMENT '性别码 见HB性别表[edu_hb_xb]',
  "CSRQ" varchar(10) DEFAULT NULL COMMENT '出生日期,格式YYYY-MM-DD',
  "GJDQM" varchar(3) DEFAULT NULL COMMENT '国籍/地区码 见表[edu_hb_gjdq]',
  "RYCHLB" varchar(10) DEFAULT NULL COMMENT '荣誉称号类别',
  "RYXUH" bigint(14) DEFAULT NULL COMMENT '荣誉序号',
  "ZBM" varchar(10) DEFAULT NULL COMMENT '洲别码',
  "ZWM" varchar(40) DEFAULT NULL COMMENT '职务码',
  "XX" varchar(40) DEFAULT NULL COMMENT '学衔',
  "GZDW" varchar(180) DEFAULT NULL COMMENT '工作单位',
  "TJDW" varchar(180) NOT NULL DEFAULT '' COMMENT '推荐单位',
  "SYZCM" varchar(3) NOT NULL DEFAULT '' COMMENT '授予职称码,见专业技术职务代码自GB/T 8561-2001',
  "SYCH" varchar(50) NOT NULL DEFAULT '' COMMENT '授予称号',
  "SYRQ" varchar(8) DEFAULT NULL COMMENT '授予日期格式：YYYYMMDD如20060412',
  "SYQX" varchar(17) DEFAULT NULL COMMENT '授予期限YYYYMMDD-YYYYMMDD',
  "GWTXDZ" varchar(180) DEFAULT NULL COMMENT '国外通信地址',
  "DH" varchar(20) NOT NULL DEFAULT '' COMMENT '电话',
  "CZDH" varchar(30) NOT NULL DEFAULT '' COMMENT '传真电话',
  "YDDH" varchar(30) DEFAULT NULL COMMENT '移动电话',
  "DZXX" varchar(40) DEFAULT NULL COMMENT '电子信箱,电子邮件地址',
  "PZRYH" varchar(20) NOT NULL DEFAULT '' COMMENT '批准人员号',
  "DKZYM" varchar(5) NOT NULL DEFAULT '' COMMENT '对口专业码,见学科分类与代码表[edu_hb_xklb]',
  "XNLXRYH" varchar(20) NOT NULL DEFAULT '' COMMENT '校内联系人员号',
  "PSBH" varchar(20) NOT NULL DEFAULT '' COMMENT '聘书编号',
  "HZLS" varchar(200) DEFAULT NULL COMMENT '合作历史',
  "WLHZJH" varchar(200) DEFAULT NULL COMMENT '未来合作计划',
  "RYBZ" varchar(2000) DEFAULT NULL COMMENT '荣誉备注'
) ENGINE=EXPRESS DISTRIBUTED BY('xh') DEFAULT CHARSET=utf8 COMMENT='[荣誉信息表-学生教职工]关于教师或者学生获得相关荣誉的信息';

