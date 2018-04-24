/*
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: li.zhanlei@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/06/30
#     REVIEWER:
#     REVISION: ---
*/
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_zczk;
CREATE TABLE edu_hb_zczk (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称'
)DEFAULT CHARSET=utf8 COMMENT='[注册状况代码表]规定了高等学校学生注册状况的分类。';

-- ----------------------------
-- Records of edu_hb_zczk
-- ----------------------------
INSERT INTO `edu_hb_zczk` VALUES ('1', '注册');
INSERT INTO `edu_hb_zczk` VALUES ('2', '报到');
INSERT INTO `edu_hb_zczk` VALUES ('9', '未报到');
