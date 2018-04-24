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
DROP TABLE IF EXISTS `edu_hb_lhlxslb`;
CREATE TABLE `edu_hb_lhlxslb` (
  `DM` char(2) NOT NULL COMMENT '代码',
  `ZWMC` varchar(5) NOT NULL COMMENT '中文名称',
  `YWMC` varchar(30) NOT NULL COMMENT '英文名称'
) DEFAULT CHARSET=utf8 COMMENT= '[来华留学生类别代码]适用于高等学校和教育行政部门';
-- ----------------------------
-- Records of edu_hb_lhlxslb
-- ----------------------------
INSERT INTO `edu_hb_lhlxslb` VALUES ('01', '专科生', 'Technological Academy Student');
INSERT INTO `edu_hb_lhlxslb` VALUES ('02', '本科生', 'Undergraduate');
INSERT INTO `edu_hb_lhlxslb` VALUES ('03', '硕士研究生', 'Master Student');
INSERT INTO `edu_hb_lhlxslb` VALUES ('04', '博士研究生', 'Ph.D.Student');
INSERT INTO `edu_hb_lhlxslb` VALUES ('05', '语言生', 'Language Student');
INSERT INTO `edu_hb_lhlxslb` VALUES ('06', '普通进修生', 'General Advanced Student');
INSERT INTO `edu_hb_lhlxslb` VALUES ('07', '高级进修生', 'Senior Advanced Student');
INSERT INTO `edu_hb_lhlxslb` VALUES ('08', '研究学者', 'Research Scholar');
INSERT INTO `edu_hb_lhlxslb` VALUES ('09', '预科生', 'Preparatory Student');
