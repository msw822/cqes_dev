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
DROP TABLE IF EXISTS `edu_hb_bzyd`;
CREATE TABLE `edu_hb_bzyd` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称'
)DEFAULT CHARSET=utf8 COMMENT= '[编制异动代码]教学类岗位与非教学类岗位编制变动的分类';

-- ----------------------------
-- Records of edu_hb_bzyd
-- ----------------------------
INSERT INTO `edu_hb_bzyd` VALUES ('1', '调至非教学岗位');
INSERT INTO `edu_hb_bzyd` VALUES ('2', '调至教学岗位');
INSERT INTO `edu_hb_bzyd` VALUES ('9', '其他');
