/*
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: wu.yabing@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/08/07
#     REVIEWER:
#     REVISION: ---
*/

-- ----------------------------
-- Table structure for edu_hb_hdfs
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_hdfs;
CREATE TABLE edu_hb_hdfs (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)  DEFAULT CHARSET=utf8 COMMENT='[获得方式代码]规定图书期刊获得方式的分类。';

-- ----------------------------
-- Records of edu_hb_hdfs
-- ----------------------------
INSERT INTO `edu_hb_hdfs` VALUES ('01', '预订');
INSERT INTO `edu_hb_hdfs` VALUES ('02', '邮购');
INSERT INTO `edu_hb_hdfs` VALUES ('03', '外采');
INSERT INTO `edu_hb_hdfs` VALUES ('04', '增选');
INSERT INTO `edu_hb_hdfs` VALUES ('05', '交换');
INSERT INTO `edu_hb_hdfs` VALUES ('06', '复制');
INSERT INTO `edu_hb_hdfs` VALUES ('07', '征集');
INSERT INTO `edu_hb_hdfs` VALUES ('08', '访求');
INSERT INTO `edu_hb_hdfs` VALUES ('09', '赠送');
INSERT INTO `edu_hb_hdfs` VALUES ('10', '调拨');
INSERT INTO `edu_hb_hdfs` VALUES ('99', '其他');

