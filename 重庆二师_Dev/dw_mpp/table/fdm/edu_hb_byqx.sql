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
DROP TABLE IF EXISTS `edu_hb_byqx`;
CREATE TABLE `edu_hb_byqx` (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(100) NOT NULL COMMENT '名称'
)DEFAULT CHARSET=utf8 COMMENT ='[毕业去向代码]中小学和中等职业学校学生毕业去向';


-- ----------------------------
-- Records of edu_hb_byqx
-- ----------------------------
INSERT INTO `edu_hb_byqx` VALUES ('10', '升学');
INSERT INTO `edu_hb_byqx` VALUES ('11', '本科');
INSERT INTO `edu_hb_byqx` VALUES ('12', '高职（专科）');
INSERT INTO `edu_hb_byqx` VALUES ('13', '职业高中（含中专、技校）');
INSERT INTO `edu_hb_byqx` VALUES ('14', '职业初中');
INSERT INTO `edu_hb_byqx` VALUES ('15', '普通高中');
INSERT INTO `edu_hb_byqx` VALUES ('16', '普通初中');
INSERT INTO `edu_hb_byqx` VALUES ('20', '就业');
INSERT INTO `edu_hb_byqx` VALUES ('30', '参军');
INSERT INTO `edu_hb_byqx` VALUES ('40', '出国');
INSERT INTO `edu_hb_byqx` VALUES ('50', '赴港澳台');
INSERT INTO `edu_hb_byqx` VALUES ('60', '待就业');
INSERT INTO `edu_hb_byqx` VALUES ('99', '其他');
