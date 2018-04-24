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
DROP TABLE IF EXISTS edu_hb_xyzj;
CREATE TABLE edu_hb_xyzj (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(20) NOT NULL COMMENT ''
)DEFAULT CHARSET=utf8 COMMENT='[宗教信仰代码]宗教枚举值，本代码引自GA 214.12-2004。';

-- ----------------------------
-- Records of edu_hb_xyzj
-- ----------------------------
INSERT INTO `edu_hb_xyzj` VALUES ('00', '无宗教信仰');
INSERT INTO `edu_hb_xyzj` VALUES ('10', '佛教');
INSERT INTO `edu_hb_xyzj` VALUES ('20', '喇嘛教');
INSERT INTO `edu_hb_xyzj` VALUES ('30', '道教');
INSERT INTO `edu_hb_xyzj` VALUES ('40', '天主教');
INSERT INTO `edu_hb_xyzj` VALUES ('50', '基督教');
INSERT INTO `edu_hb_xyzj` VALUES ('60', '东正教');
INSERT INTO `edu_hb_xyzj` VALUES ('70', '伊斯兰教');
INSERT INTO `edu_hb_xyzj` VALUES ('99', '其他');