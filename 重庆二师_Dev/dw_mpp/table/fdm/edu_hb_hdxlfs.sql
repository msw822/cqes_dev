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
DROP TABLE IF EXISTS `edu_hb_hdxlfs`;
CREATE TABLE "edu_hb_hdxlfs" (
  `DM` tinyint(4) DEFAULT NULL,
  `MC` varchar(20) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[获得学历方式码]规定了学生获得高等学校学历的方式分类,采用顺序码，用一位数字表示';

-- ----------------------------
-- Records of edu_hb_hdxlfs
-- ----------------------------
INSERT INTO `edu_hb_hdxlfs` VALUES ('1', '直接授予');
INSERT INTO `edu_hb_hdxlfs` VALUES ('2', '参加学历文凭考试');
INSERT INTO `edu_hb_hdxlfs` VALUES ('9', '其他');