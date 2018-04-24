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
#      CREATED: 2017/08/08
#     REVIEWER:
#     REVISION: ---
*/

-- ----------------------------
-- Table structure for edu_hb_zyzxtzbzmc
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_zyzxtzbzmc;
CREATE TABLE edu_hb_zyzxtzbzmc (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)  DEFAULT CHARSET=utf8 COMMENT='[中央专项投资补助名称代码]规定中央专项投资补助的项目的类别名称。';

-- ----------------------------
-- Records of edu_hb_zyzxtzbzmc
-- ----------------------------
INSERT INTO `edu_hb_zyzxtzbzmc` VALUES ('A', '义教工程');
INSERT INTO `edu_hb_zyzxtzbzmc` VALUES ('B', '校舍维修改造工程');
INSERT INTO `edu_hb_zyzxtzbzmc` VALUES ('C', '危房改造工程');
INSERT INTO `edu_hb_zyzxtzbzmc` VALUES ('D', '寄宿制工程');
INSERT INTO `edu_hb_zyzxtzbzmc` VALUES ('E', '世行贷款工程');
INSERT INTO `edu_hb_zyzxtzbzmc` VALUES ('F', '西扶项目工程');
INSERT INTO `edu_hb_zyzxtzbzmc` VALUES ('G', '抗震救灾工程');
INSERT INTO `edu_hb_zyzxtzbzmc` VALUES ('H', '初中校舍改造工程');
INSERT INTO `edu_hb_zyzxtzbzmc` VALUES ('I', '特殊教育学校建设工程');
INSERT INTO `edu_hb_zyzxtzbzmc` VALUES ('J', '布局调整项目');
INSERT INTO `edu_hb_zyzxtzbzmc` VALUES ('K', '新农村卫生新校园建设工程');
INSERT INTO `edu_hb_zyzxtzbzmc` VALUES ('L', '边境工程');
INSERT INTO `edu_hb_zyzxtzbzmc` VALUES ('M', '安全工程');
INSERT INTO `edu_hb_zyzxtzbzmc` VALUES ('N', '薄弱项目改造工程');
INSERT INTO `edu_hb_zyzxtzbzmc` VALUES ('Z', '中央其他工程');

