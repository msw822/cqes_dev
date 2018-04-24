/*
#  DESCRIPTION: 
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
DROP TABLE IF EXISTS `edu_hb_hkxz`;
CREATE TABLE edu_hb_hkxz (
  "DM" char(1) NOT NULL COMMENT '代码',
  "MC" varchar(10)  NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT='[户口类别代码]本代码引自GA 324.1-2001';
INSERT INTO edu_hb_hkxz VALUES ('0', '未落常住户口');
INSERT INTO edu_hb_hkxz VALUES ('1', '非农业家庭户口');
INSERT INTO edu_hb_hkxz VALUES ('2', '农业家庭户口');
INSERT INTO edu_hb_hkxz VALUES ('3', '非农业集体户口');
INSERT INTO edu_hb_hkxz VALUES ('2', '农业集体户口');
INSERT INTO edu_hb_hkxz VALUES ('5', '自理口粮户口');
