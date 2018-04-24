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
-- Table structure for edu_hb_fwcq
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_fwcq;
CREATE TABLE edu_hb_fwcq (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
) DEFAULT CHARSET=utf8 COMMENT='[房屋产权]规定师生员工居住房屋的产权分类。';

-- ----------------------------
-- Records of edu_hb_fwcq
-- ----------------------------
INSERT INTO `edu_hb_fwcq` VALUES ('01', '自购福利住房');
INSERT INTO `edu_hb_fwcq` VALUES ('02', '自购经济实用住房');
INSERT INTO `edu_hb_fwcq` VALUES ('03', '自购商品住房');
INSERT INTO `edu_hb_fwcq` VALUES ('04', '自建住房');
INSERT INTO `edu_hb_fwcq` VALUES ('05', '租住本校公有住房');
INSERT INTO `edu_hb_fwcq` VALUES ('06', '租住外单位公有住房');
INSERT INTO `edu_hb_fwcq` VALUES ('07', '租住私有住房');
INSERT INTO `edu_hb_fwcq` VALUES ('08', '集体宿舍');
INSERT INTO `edu_hb_fwcq` VALUES ('09', '本校暂借');
INSERT INTO `edu_hb_fwcq` VALUES ('10', '外单位暂借');
INSERT INTO `edu_hb_fwcq` VALUES ('99', '其他');

