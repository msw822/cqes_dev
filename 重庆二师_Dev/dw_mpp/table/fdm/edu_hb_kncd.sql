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
DROP TABLE IF EXISTS edu_hb_kncd;
CREATE TABLE edu_hb_kncd (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(20) NOT NULL COMMENT '名称',
  `SM` varchar(120) DEFAULT NULL COMMENT '说明'
)DEFAULT CHARSET=utf8 COMMENT='[困难程度码表]本代码采用二位二层数字编码。第一位表示大类，第二位表示小类。当第一位代码为2时，再细分二个小类。';

-- ----------------------------
-- Records of edu_hb_kncd
-- ----------------------------
INSERT INTO `edu_hb_kncd` VALUES ('1', '特别困难','家庭人均月收入低于学校所在地低保线，或学生在校月收入（包括奖学金、勤工助学取得的收入和各种补贴）低于学生所在地区居民的平均最低生活水准线');
INSERT INTO `edu_hb_kncd` VALUES ('2', '一般困难','家庭人均月收入低于学校所在地低保线的1.5 倍');
INSERT INTO `edu_hb_kncd` VALUES ('21', '困难','介于“特别困难”与“一般困难”之间');
INSERT INTO `edu_hb_kncd` VALUES ('22', '一般困难','家庭人均月收入低于学校所在地低保线的1.5 倍');
INSERT INTO `edu_hb_kncd` VALUES ('3', '不困难',NULL);
