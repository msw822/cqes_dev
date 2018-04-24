/*
#  DESCRIPTION: 奖励获得信息表
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: li.zhanlei@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/06/30
#     REVIEWER:
#     REVISION: ---
*/
set names utf8;
use fdm;
DROP TABLE IF EXISTS FDM.EDU_FDM_JLHDXX;
CREATE TABLE IF NOT EXISTS FDM.EDU_FDM_JLHDXX (
  "XH" varchar(20) NOT NULL COMMENT '学号',
  "SFZJH" varchar(20) DEFAULT NULL COMMENT '身份证件号',
  "JLMC" varchar(60) DEFAULT NULL COMMENT '奖励名称',
  "JLJBM" varchar(2) DEFAULT NULL COMMENT '奖励级别码,JY/T 1001 JB 级别代码,见[edu_hb_jljb]',
  "JLDJM" varchar(1) DEFAULT NULL COMMENT 'JY/T 1001JLDJ奖励等级代码,见[edu_hb_jldj]',
  "HJLBM" varchar(1) DEFAULT NULL COMMENT 'JY/T 1001 XSHJLB学生获奖类别代码,见[EDU_HB_XSHJLB]',
  "JLYY" varchar(100) DEFAULT NULL COMMENT '奖励原因',
  "JLJE" decimal(10,2) DEFAULT NULL COMMENT '奖励金额,元',
  "JLWH" varchar(24) DEFAULT NULL COMMENT '奖励文号,指获奖的正式文号,无正式文号不填',
  "JLXND" varchar(180) DEFAULT NULL COMMENT '奖励学年度,YYYY-YYYY',
  "BJDW" varchar(60) DEFAULT NULL COMMENT '颁奖单位,授予奖励的单位名称',
  "JLLXM" varchar(1) DEFAULT NULL COMMENT 'JY/T 1001 HJLX获奖类型代码,1:集体,2:个人综合,3:个人单项',
  "JLFSM" varchar(1) DEFAULT NULL COMMENT 'JY/T 1001 JLFS见[EDU_HB_JLFS]奖励方式代码,1:奖状,2:荣誉称号,3:奖金,4:实物,9:其他',
  "JLNY" varchar(6) DEFAULT NULL COMMENT '奖励年月YYYYMM',
  "HJZRS" varchar(8) DEFAULT NULL COMMENT '获奖总人数',
  "BRPM" varchar(8) DEFAULT NULL COMMENT '本人排名'
) DISTRIBUTED BY('xh') DEFAULT CHARSET=utf8 COMMENT='[奖励获得信息表]关于奖励的类型、原因、时间等信息';

