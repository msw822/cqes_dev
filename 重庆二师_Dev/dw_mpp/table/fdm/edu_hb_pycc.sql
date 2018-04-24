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
use fdm;
DROP TABLE IF EXISTS `edu_hb_pycc`;
CREATE TABLE "edu_hb_pycc" (
  `DM` tinyint(4) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称'
)DEFAULT CHARSET=utf8 COMMENT='[培养层次码]码规定了高等学校学生培养层次的分类,采用顺序码，用一位数字表示';

-- ----------------------------
-- Records of edu_hb_pycc
-- ----------------------------
INSERT INTO `edu_hb_pycc` VALUES ('1', '博士');
INSERT INTO `edu_hb_pycc` VALUES ('2', '硕士');
INSERT INTO `edu_hb_pycc` VALUES ('3', '本科');
INSERT INTO `edu_hb_pycc` VALUES ('4', '专科');
INSERT INTO `edu_hb_pycc` VALUES ('9', '其他');