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
DROP TABLE IF EXISTS `edu_hb_cqshjzhxsttzwyy`;
CREATE TABLE `edu_hb_cqshjzhxsttzwyy` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(5) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[辞去社会兼职或学术团体职务原因代码]代替2002年《教育管理信息化标准 第1部分：学校管理信息标准》';
-- ----------------------------
-- Records of edu_hb_cqshjzhxsttzwyy
-- ----------------------------
INSERT INTO `edu_hb_cqshjzhxsttzwyy` VALUES ('1', '任职期满');
INSERT INTO `edu_hb_cqshjzhxsttzwyy` VALUES ('2', '工作调动');
INSERT INTO `edu_hb_cqshjzhxsttzwyy` VALUES ('3', '换届改选');
INSERT INTO `edu_hb_cqshjzhxsttzwyy` VALUES ('4', '离退休');
INSERT INTO `edu_hb_cqshjzhxsttzwyy` VALUES ('5', '健康原因');
INSERT INTO `edu_hb_cqshjzhxsttzwyy` VALUES ('6', '辞职');
INSERT INTO `edu_hb_cqshjzhxsttzwyy` VALUES ('7', '免职');
INSERT INTO `edu_hb_cqshjzhxsttzwyy` VALUES ('8', '处分');
INSERT INTO `edu_hb_cqshjzhxsttzwyy` VALUES ('9', '其他');
