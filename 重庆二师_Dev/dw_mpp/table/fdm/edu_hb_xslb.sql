/*
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: bi.yanbo@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/06/30
#     REVIEWER:
#     REVISION: ---
*/
set names utf8;
use fdm;

DROP TABLE IF EXISTS edu_hb_xslb;
CREATE TABLE IF NOT exists edu_hb_xslb (
  "DM" varchar(10) NOT NULL,
  "MC" varchar(50) DEFAULT NULL
) DEFAULT CHARSET=utf8 COMMENT '学生类别码';


-- ----------------------------
-- Records of edu_hb_xslb
-- ----------------------------
insert into edu_hb_xslb values ('1','学前教育');
insert into edu_hb_xslb values ('11','幼儿');
insert into edu_hb_xslb values ('2','初等教育');
insert into edu_hb_xslb values ('21','小学生');
insert into edu_hb_xslb values ('3','中等教育');
insert into edu_hb_xslb values ('31','初中生');
insert into edu_hb_xslb values ('32','高中生');
insert into edu_hb_xslb values ('33','中职生');
insert into edu_hb_xslb values ('34','工读学生');
insert into edu_hb_xslb values ('4','高等教育');
insert into edu_hb_xslb values ('41','专科生');
insert into edu_hb_xslb values ('42','本科生');
insert into edu_hb_xslb values ('43','研究生');
insert into edu_hb_xslb values ('44','学位学生');
insert into edu_hb_xslb values ('5','特殊教育');
insert into edu_hb_xslb values ('51','特殊教育学生');
insert into edu_hb_xslb values ('9','其他教育');
insert into edu_hb_xslb values ('91','自考/预科/研究生课程类');
insert into edu_hb_xslb values ('92','进修及培训类');
insert into edu_hb_xslb values ('93','职业技术培训类');
