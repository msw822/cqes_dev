/*
#  DESCRIPTION: 课程签到表
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
DROP TABLE IF EXISTS FDM.EDU_FDM_KCQD;
CREATE TABLE IF NOT EXISTS FDM.EDU_FDM_KCQD (
  "QDZH" varchar(50) NOT NULL COMMENT '签到账号',
  "QDSJ" datetime NOT NULL COMMENT '签到时间',
  "KCH" varchar(100) DEFAULT NULL COMMENT '签到课程号',
  "QDKC" varchar(100) DEFAULT NULL COMMENT '签到课程',
  "QDSHFW" varchar(100) DEFAULT NULL COMMENT '课程签到时间范围',
  "QDJD" double(20,16) DEFAULT NULL COMMENT '签到时用户当前经度',
  "QDWD" double(20,16) DEFAULT NULL COMMENT '签到时用户当前纬度',
  "WQDJD" double(20,16) DEFAULT NULL COMMENT '未签到时用户当前经度',
  "WQDWD" double(20,16) DEFAULT NULL COMMENT '未签到时用户当前纬度',
  "QDZT" varchar(2) DEFAULT NULL COMMENT '签到状态:准签：1 请假：2 迟到：3 未签：4 蹭课：5',
  "QDSJWYBS" varchar(10) DEFAULT NULL COMMENT '签到手机唯一标识',
  "QDFS" varchar(2) DEFAULT NULL COMMENT '签到方式:1.微信 2.APP 3.微信补签 4.APP补签 5.后台补签',
  "KJXZCS" int(11) DEFAULT '0' COMMENT '在手机上下载课件的次数',
  "YHLX" varchar(6) DEFAULT NULL COMMENT '用户类型',
  "QYID" varchar(20) DEFAULT NULL COMMENT '区域ID',
  "SJC" datetime DEFAULT NULL COMMENT '时间戳'
) ENGINE=EXPRESS NOCOPIES  DEFAULT CHARSET=utf8 COMMENT='课程签到表';

