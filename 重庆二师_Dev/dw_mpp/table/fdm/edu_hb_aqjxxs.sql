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
DROP TABLE IF EXISTS `edu_hb_aqjxxs`;
CREATE TABLE `edu_hb_aqjxxs` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(20) NOT NULL COMMENT '名称'
)DEFAULT CHARSET=utf8 COMMENT='[安全教学形式代码]规定了安全教育的教授方式类别'; 

-- ----------------------------
-- Records of edu_hb_aqjxxs
-- ----------------------------
INSERT INTO `edu_hb_aqjxxs` VALUES ('1', '课堂教学');
INSERT INTO `edu_hb_aqjxxs` VALUES ('2', '专题报告');
INSERT INTO `edu_hb_aqjxxs` VALUES ('3', '应急演练');
INSERT INTO `edu_hb_aqjxxs` VALUES ('9', '其他');
