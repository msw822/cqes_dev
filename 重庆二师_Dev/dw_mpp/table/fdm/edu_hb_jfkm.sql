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
DROP TABLE IF EXISTS `edu_hb_jfkm`;
CREATE TABLE `edu_hb_jfkm` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[经费科目代码]中小学校、中等职业学校、高等学校和幼儿园的经费科目分类';
-- ----------------------------
-- Records of edu_hb_jfkm
-- ----------------------------
INSERT INTO `edu_hb_jfkm` VALUES ('1', '教育事业费');
INSERT INTO `edu_hb_jfkm` VALUES ('2', '科研专款及基金');
INSERT INTO `edu_hb_jfkm` VALUES ('3', '基建设备费');
INSERT INTO `edu_hb_jfkm` VALUES ('4', '自筹经费');
INSERT INTO `edu_hb_jfkm` VALUES ('5', '世界银行贷款');
INSERT INTO `edu_hb_jfkm` VALUES ('6', '捐款');
INSERT INTO `edu_hb_jfkm` VALUES ('9', '其他');
