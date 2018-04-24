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
DROP TABLE IF EXISTS edu_hb_kwzd;
CREATE TABLE edu_hb_kwzd (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` char(6) NOT NULL COMMENT '名称'
)DEFAULT CHARSET=utf8 COMMENT='[刊物装订代码]规定了刊物装订形式的分类，采用顺序码，用一位数字表示。';

-- ----------------------------
-- Records of edu_hb_kwzd
-- ----------------------------
INSERT INTO `edu_hb_kwzd` VALUES ('1', '平装');
INSERT INTO `edu_hb_kwzd` VALUES ('2', '精装');
INSERT INTO `edu_hb_kwzd` VALUES ('9', '其他');
