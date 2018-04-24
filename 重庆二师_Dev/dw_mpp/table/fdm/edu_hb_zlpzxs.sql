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
DROP TABLE IF EXISTS edu_hb_zlpzxs;
CREATE TABLE edu_hb_zlpzxs (
  `DM` char(1) DEFAULT NULL,
  `MC` varchar(20) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[专利批准形式代码]规定了专利成果的批准形式，采用顺序码，用一位数字表示。';

-- ----------------------------
-- Records of edu_hb_zlflzt
-- ----------------------------
INSERT INTO `edu_hb_zlpzxs` VALUES ('0', '未批准');
INSERT INTO `edu_hb_zlpzxs` VALUES ('1', '国内');
INSERT INTO `edu_hb_zlpzxs` VALUES ('2', '国外');
INSERT INTO `edu_hb_zlpzxs` VALUES ('3', '国内、外');
