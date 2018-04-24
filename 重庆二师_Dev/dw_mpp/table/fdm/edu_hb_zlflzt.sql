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
DROP TABLE IF EXISTS edu_hb_zlflzt;
CREATE TABLE edu_hb_zlflzt (
  `DM` char(1) DEFAULT NULL,
  `MC` varchar(20) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[专利法律状态代码]规定了申请专利成果所处的法律状态分类，采用顺序码，用一位数字表示。';

-- ----------------------------
-- Records of edu_hb_zlflzt
-- ----------------------------
INSERT INTO `edu_hb_zlflzt` VALUES ('1', '授权专利');
INSERT INTO `edu_hb_zlflzt` VALUES ('2', '待批专利');
INSERT INTO `edu_hb_zlflzt` VALUES ('3', '撤销专利');
INSERT INTO `edu_hb_zlflzt` VALUES ('4', '无效专利');
INSERT INTO `edu_hb_zlflzt` VALUES ('5', '终止专利');
