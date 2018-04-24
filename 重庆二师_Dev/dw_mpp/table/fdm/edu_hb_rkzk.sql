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
DROP TABLE IF EXISTS edu_hb_rkzk;
CREATE TABLE edu_hb_rkzk (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(40) NOT NULL COMMENT '名称'
)DEFAULT CHARSET=utf8 COMMENT='[任课状况码]规定了学校专任教师任课状况的分类,采用二层二位数字码，第一位表示大类，第二位表示小类';

-- ----------------------------
-- Records of edu_hb_rkzk
-- ----------------------------
INSERT INTO `edu_hb_rkzk` VALUES ('10', '未任课教师');
INSERT INTO `edu_hb_rkzk` VALUES ('11', '进修');
INSERT INTO `edu_hb_rkzk` VALUES ('12', '科研');
INSERT INTO `edu_hb_rkzk` VALUES ('13', '病休');
INSERT INTO `edu_hb_rkzk` VALUES ('19', '其他原因未任课');
INSERT INTO `edu_hb_rkzk` VALUES ('20', '任课教师');
INSERT INTO `edu_hb_rkzk` VALUES ('21', '基础课');
INSERT INTO `edu_hb_rkzk` VALUES ('22', '专业课');
INSERT INTO `edu_hb_rkzk` VALUES ('23', '实践技术指导');
INSERT INTO `edu_hb_rkzk` VALUES ('29', '其他课');
INSERT INTO `edu_hb_rkzk` VALUES ('99', '其他不担任教学的教职工');