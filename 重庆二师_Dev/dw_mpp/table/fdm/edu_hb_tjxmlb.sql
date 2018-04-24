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
DROP TABLE IF EXISTS `edu_hb_tjxmlb`;
CREATE TABLE `edu_hb_tjxmlb` (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(5) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT ='[体检项目类别代码]适用于中小学校、中等职业学校、高等学校和幼儿园';
-- ----------------------------
-- Records of edu_hb_tjxmlb
-- ----------------------------
INSERT INTO `edu_hb_tjxmlb` VALUES ('01', '内科');
INSERT INTO `edu_hb_tjxmlb` VALUES ('02', '外科');
INSERT INTO `edu_hb_tjxmlb` VALUES ('03', '眼科');
INSERT INTO `edu_hb_tjxmlb` VALUES ('04', '耳鼻喉科');
INSERT INTO `edu_hb_tjxmlb` VALUES ('05', '口腔科');
INSERT INTO `edu_hb_tjxmlb` VALUES ('06', '妇科');
INSERT INTO `edu_hb_tjxmlb` VALUES ('07', '血压');
INSERT INTO `edu_hb_tjxmlb` VALUES ('08', '胸透');
INSERT INTO `edu_hb_tjxmlb` VALUES ('09', '生化检查');
INSERT INTO `edu_hb_tjxmlb` VALUES ('10', '心电图');
INSERT INTO `edu_hb_tjxmlb` VALUES ('11', 'B 超');
INSERT INTO `edu_hb_tjxmlb` VALUES ('12', '身高');
INSERT INTO `edu_hb_tjxmlb` VALUES ('13', '体重');
INSERT INTO `edu_hb_tjxmlb` VALUES ('14', '体能、形态');
INSERT INTO `edu_hb_tjxmlb` VALUES ('99', '其他');
