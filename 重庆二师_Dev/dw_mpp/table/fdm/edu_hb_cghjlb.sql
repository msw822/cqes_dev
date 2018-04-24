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
DROP TABLE IF EXISTS `edu_hb_cghjlb`;
CREATE TABLE `edu_hb_cghjlb` (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称'
)DEFAULT CHARSET=utf8 COMMENT ='[成果获奖类别代码]代替2002年《教育管理信息化标准 第1部分：学校管理信息标准》';
-- ----------------------------
-- Records of edu_hb_cghjlb
-- ----------------------------
INSERT INTO `edu_hb_cghjlb` VALUES ('01', '科学技术');
INSERT INTO `edu_hb_cghjlb` VALUES ('02', '发明');
INSERT INTO `edu_hb_cghjlb` VALUES ('03', '自然科学');
INSERT INTO `edu_hb_cghjlb` VALUES ('04', '哲学社会科学');
INSERT INTO `edu_hb_cghjlb` VALUES ('05', '科技进步');
INSERT INTO `edu_hb_cghjlb` VALUES ('06', '优秀教材');
INSERT INTO `edu_hb_cghjlb` VALUES ('07', '合理化和技术改造');
INSERT INTO `edu_hb_cghjlb` VALUES ('08', '技术展览');
INSERT INTO `edu_hb_cghjlb` VALUES ('09', '星火计划');
INSERT INTO `edu_hb_cghjlb` VALUES ('10', '教学成果');
INSERT INTO `edu_hb_cghjlb` VALUES ('11', '教学软件');
INSERT INTO `edu_hb_cghjlb` VALUES ('12', '实验技术成果');
INSERT INTO `edu_hb_cghjlb` VALUES ('99', '其他');
INSERT INTO `edu_hb_cghjlb` VALUES ('', '');
