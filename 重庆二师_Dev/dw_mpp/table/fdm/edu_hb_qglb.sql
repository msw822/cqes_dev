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
DROP TABLE IF EXISTS `edu_hb_qglb`;
CREATE TABLE `edu_hb_qglb` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(5) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[勤工类别代码]高等学校学生勤工助学工作的类别';
-- ----------------------------
-- Records of edu_hb_qglb
-- ----------------------------
INSERT INTO `edu_hb_qglb` VALUES ('1', '辅助教学');
INSERT INTO `edu_hb_qglb` VALUES ('2', '辅助科研');
INSERT INTO `edu_hb_qglb` VALUES ('3', '辅助管理');
INSERT INTO `edu_hb_qglb` VALUES ('4', '卫生清洁');
INSERT INTO `edu_hb_qglb` VALUES ('5', '校园保安');
INSERT INTO `edu_hb_qglb` VALUES ('6', '校园修缮');
INSERT INTO `edu_hb_qglb` VALUES ('7', '家教');
INSERT INTO `edu_hb_qglb` VALUES ('9', '其他');
