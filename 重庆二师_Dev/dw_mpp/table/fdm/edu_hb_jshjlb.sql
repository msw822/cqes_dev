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
DROP TABLE IF EXISTS `edu_hb_jshjlb`;
CREATE TABLE `edu_hb_jshjlb` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(5) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT ='[教师获奖类别代码]适用于中小学校、中等职业学校、高等学校和幼儿园';
-- ----------------------------
-- Records of edu_hb_jshjlb
-- ----------------------------
INSERT INTO `edu_hb_jshjlb` VALUES ('1', '教学工作');
INSERT INTO `edu_hb_jshjlb` VALUES ('2', '科研工作');
INSERT INTO `edu_hb_jshjlb` VALUES ('3', '专业技术');
INSERT INTO `edu_hb_jshjlb` VALUES ('4', '工作业绩');
INSERT INTO `edu_hb_jshjlb` VALUES ('5', '科技竞赛');
INSERT INTO `edu_hb_jshjlb` VALUES ('6', '体育比赛');
INSERT INTO `edu_hb_jshjlb` VALUES ('7', '文艺比赛');
INSERT INTO `edu_hb_jshjlb` VALUES ('8', '公益事业');
INSERT INTO `edu_hb_jshjlb` VALUES ('9', '其他');
