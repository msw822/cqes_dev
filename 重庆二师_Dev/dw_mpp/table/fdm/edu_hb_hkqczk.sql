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
DROP TABLE IF EXISTS `edu_hb_hkqczk`;
CREATE TABLE `edu_hb_hkqczk` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(5) NOT NULL COMMENT '名称'
)DEFAULT CHARSET=utf8 COMMENT ='[户口迁出状况代码]高等学校学生毕业办理户口迁出时，领取户口转移证明的状态';
-- ------------------------
-- Records of edu_hb_hkqczk
-- ----------------------------
INSERT INTO `edu_hb_hkqczk` VALUES ('1', '待领');
INSERT INTO `edu_hb_hkqczk` VALUES ('2', '已领');
INSERT INTO `edu_hb_hkqczk` VALUES ('3', '缓办');
INSERT INTO `edu_hb_hkqczk` VALUES ('4', '户口不在校');
