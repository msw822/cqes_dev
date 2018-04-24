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
DROP TABLE IF EXISTS `edu_hb_knyy`;
CREATE TABLE `edu_hb_knyy` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称'
)DEFAULT CHARSET=utf8 COMMENT= '[困难原因代码]本代码规定了学生家庭困难原因的分类';
-- ----------------------------
-- Records of edu_hb_knyy
-- ----------------------------
INSERT INTO `edu_hb_knyy` VALUES ('1', '自然灾害');
INSERT INTO `edu_hb_knyy` VALUES ('2', '突发意外');
INSERT INTO `edu_hb_knyy` VALUES ('3', '家庭成员病残');
INSERT INTO `edu_hb_knyy` VALUES ('4', '家长失业');
INSERT INTO `edu_hb_knyy` VALUES ('9', '其他');
