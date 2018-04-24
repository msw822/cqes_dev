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
DROP TABLE IF EXISTS `edu_hb_pyfs`;
CREATE TABLE "edu_hb_pyfs" (
  `DM` int(11) NOT NULL,
  `MC` varchar(20) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[培养方式码]规定了对学生培养方式的分类,采用二层二位数字码，第一位表示大类，第二位表示小类';

-- ----------------------------
-- Records of edu_hb_pyfs
-- ----------------------------
INSERT INTO `edu_hb_pyfs` VALUES ('10', '国家任务');
INSERT INTO `edu_hb_pyfs` VALUES ('11', '非定向');
INSERT INTO `edu_hb_pyfs` VALUES ('12', '定向');
INSERT INTO `edu_hb_pyfs` VALUES ('20', '非国家任务');
INSERT INTO `edu_hb_pyfs` VALUES ('21', '自筹经费');
INSERT INTO `edu_hb_pyfs` VALUES ('22', '委托培养');
INSERT INTO `edu_hb_pyfs` VALUES ('23', '联合培养');
INSERT INTO `edu_hb_pyfs` VALUES ('30', '留学生');
INSERT INTO `edu_hb_pyfs` VALUES ('31', '国际组织资助');
INSERT INTO `edu_hb_pyfs` VALUES ('32', '中国政府资助');
INSERT INTO `edu_hb_pyfs` VALUES ('33', '本国政府资助');
INSERT INTO `edu_hb_pyfs` VALUES ('34', '学校间交换');
INSERT INTO `edu_hb_pyfs` VALUES ('35', '自费留学生');
INSERT INTO `edu_hb_pyfs` VALUES ('99', '其他');
INSERT INTO `edu_hb_pyfs` VALUES ('24', '双向培养');
