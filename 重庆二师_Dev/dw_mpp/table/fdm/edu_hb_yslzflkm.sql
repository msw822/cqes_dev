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
DROP TABLE IF EXISTS `edu_hb_yslzflkm`;
CREATE TABLE `edu_hb_yslzflkm` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(5) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[预算类总分类科目代码]高等学校财务管理中的预算类总分科目';
-- ----------------------------
-- Records of edu_hb_yslzflkm
-- ----------------------------
INSERT INTO `edu_hb_yslzflkm` VALUES ('1', '资产');
INSERT INTO `edu_hb_yslzflkm` VALUES ('2', '负债');
INSERT INTO `edu_hb_yslzflkm` VALUES ('3', '净资产');
INSERT INTO `edu_hb_yslzflkm` VALUES ('4', '收入');
INSERT INTO `edu_hb_yslzflkm` VALUES ('5', '支出');
INSERT INTO `edu_hb_yslzflkm` VALUES ('6', '预算');
