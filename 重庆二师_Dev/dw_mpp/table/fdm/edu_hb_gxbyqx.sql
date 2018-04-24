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
DROP TABLE IF EXISTS `edu_hb_gxbyqx`;
CREATE TABLE `edu_hb_gxbyqx` (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(30) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[高校毕业去向]高等学校毕业生（包括专科生、本科生、硕士生、博士生）毕业去向的分类';
-- ----------------------------
-- Records of edu_hb_gxbyqx
-- ----------------------------
INSERT INTO `edu_hb_gxbyqx` VALUES ('10', '派遣');
INSERT INTO `edu_hb_gxbyqx` VALUES ('20', '用人单位接收');
INSERT INTO `edu_hb_gxbyqx` VALUES ('30', '升学');
INSERT INTO `edu_hb_gxbyqx` VALUES ('40', '出国（境）');
INSERT INTO `edu_hb_gxbyqx` VALUES ('50', '暂缓就业');
INSERT INTO `edu_hb_gxbyqx` VALUES ('60', '灵活就业');
INSERT INTO `edu_hb_gxbyqx` VALUES ('70', '定向委培');
INSERT INTO `edu_hb_gxbyqx` VALUES ('80', '国家地方项目');
INSERT INTO `edu_hb_gxbyqx` VALUES ('99', '其他');
