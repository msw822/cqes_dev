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
DROP TABLE IF EXISTS edu_hb_zllx;
CREATE TABLE edu_hb_zllx (
  `DM` char(1) DEFAULT NULL,
  `MC` varchar(20) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[ZLLX专利类型码表]规定了专利成果类型的划分，采用顺序码，用一位数字表示。';

-- ----------------------------
-- Records of edu_hb_zllx
-- ----------------------------
INSERT INTO `edu_hb_zllx` VALUES ('1', '发明');
INSERT INTO `edu_hb_zllx` VALUES ('2', '实用新型');
INSERT INTO `edu_hb_zllx` VALUES ('3', '外观设计');
INSERT INTO `edu_hb_zllx` VALUES ('4', 'PCT 或外国申请');
