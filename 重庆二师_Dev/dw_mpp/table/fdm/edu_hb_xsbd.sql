/*
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: song.shengjie@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/08/07
#     REVIEWER:
#     REVISION: ---
*/
set names utf8;
use FDM;
DROP TABLE IF EXISTS `edu_hb_xsbd`;
CREATE TABLE `edu_hb_xsbd` (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(5) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[学生变动代码]适用于各级各类学校（机构';
-- ----------------------------
-- Records of edu_hb_xsbd
-- ----------------------------
INSERT INTO `edu_hb_xsbd` VALUES ('11', '招生');
INSERT INTO `edu_hb_xsbd` VALUES ('12', '复学');
INSERT INTO `edu_hb_xsbd` VALUES ('13', '转入');
INSERT INTO `edu_hb_xsbd` VALUES ('21', '毕业');
INSERT INTO `edu_hb_xsbd` VALUES ('22', '结业');
INSERT INTO `edu_hb_xsbd` VALUES ('23', '休学');
INSERT INTO `edu_hb_xsbd` VALUES ('24', '退学');
INSERT INTO `edu_hb_xsbd` VALUES ('25', '开除');
INSERT INTO `edu_hb_xsbd` VALUES ('26', '死亡');
INSERT INTO `edu_hb_xsbd` VALUES ('27', '转出');
INSERT INTO `edu_hb_xsbd` VALUES ('28', '辍学');
