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
DROP TABLE IF EXISTS `edu_hb_xzdwlx`;
CREATE TABLE `edu_hb_xzdwlx` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[协作单位类型代码]参与项目研究的协作单位分类。适用于中小学校、中等职业学校和高等学校';
-- ----------------------------
-- Records of edu_hb_xzdwlx
-- ----------------------------
INSERT INTO `edu_hb_xzdwlx` VALUES ('0', '无合作单位');
INSERT INTO `edu_hb_xzdwlx` VALUES ('1', '高校');
INSERT INTO `edu_hb_xzdwlx` VALUES ('2', '研究院(所)');
INSERT INTO `edu_hb_xzdwlx` VALUES ('3', '企业');
INSERT INTO `edu_hb_xzdwlx` VALUES ('9', '其他');
