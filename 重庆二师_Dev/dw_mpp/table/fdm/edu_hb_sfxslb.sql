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
DROP TABLE IF EXISTS `edu_hb_sfxslb`;
CREATE TABLE `edu_hb_sfxslb` (
  `DM` char(3) NOT NULL COMMENT '代码',
  `MC` varchar(20) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT ='[师范学生类别代码]与教师培养相关的学生类别。适用于高等师范院校和中等师范学校';
-- ----------------------------
-- Records of edu_hb_sfxslb
-- ----------------------------
INSERT INTO `edu_hb_sfxslb` VALUES ('1', '师范类学生');
INSERT INTO `edu_hb_sfxslb` VALUES ('11', '中等师范学校师范生');
INSERT INTO `edu_hb_sfxslb` VALUES ('111', '中等师范学校师范生');
INSERT INTO `edu_hb_sfxslb` VALUES ('12', '高等师范院校师范生（本科）');
INSERT INTO `edu_hb_sfxslb` VALUES ('121', '高等师范院校普通师范生（本科）');
INSERT INTO `edu_hb_sfxslb` VALUES ('122', '高等师范院校免费师范生（本科）');
INSERT INTO `edu_hb_sfxslb` VALUES ('13', '教育硕士');
INSERT INTO `edu_hb_sfxslb` VALUES ('131', '在职普通教育硕士');
INSERT INTO `edu_hb_sfxslb` VALUES ('132', '全日制普通教育硕士');
INSERT INTO `edu_hb_sfxslb` VALUES ('133', '免费师范生攻读教育硕士');
INSERT INTO `edu_hb_sfxslb` VALUES ('134', '农村教育硕士（硕师计划）');
INSERT INTO `edu_hb_sfxslb` VALUES ('14', '教育博士');
INSERT INTO `edu_hb_sfxslb` VALUES ('141', '教育博士');
INSERT INTO `edu_hb_sfxslb` VALUES ('2', '非师范类学生');
