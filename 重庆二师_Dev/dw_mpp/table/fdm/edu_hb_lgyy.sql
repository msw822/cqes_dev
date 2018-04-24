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
DROP TABLE IF EXISTS `edu_hb_lgyy`;
CREATE TABLE `edu_hb_lgyy` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称'
)DEFAULT CHARSET=utf8 COMMENT ='[离岗原因代码]适用于中小学校、中等职业学校和高等学校';
-- ----------------------------
-- Records of edu_hb_lgyy
-- ----------------------------
INSERT INTO `edu_hb_lgyy` VALUES ('1', '出国（境）');
INSERT INTO `edu_hb_lgyy` VALUES ('2', '国内探亲');
INSERT INTO `edu_hb_lgyy` VALUES ('3', '事假');
INSERT INTO `edu_hb_lgyy` VALUES ('4', '病休');
INSERT INTO `edu_hb_lgyy` VALUES ('5', '国内进修学习');
INSERT INTO `edu_hb_lgyy` VALUES ('6', '借调');
INSERT INTO `edu_hb_lgyy` VALUES ('7', '不胜任工作');
INSERT INTO `edu_hb_lgyy` VALUES ('8', '处分');
INSERT INTO `edu_hb_lgyy` VALUES ('9', '其他');
