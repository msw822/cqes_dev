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
-- Table structure for edu_hb_ztbxs
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_ztbxs;
CREATE TABLE edu_hb_ztbxs (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[招投标形式代码]规定项目采用的招投标形式的分类。';

-- ----------------------------
-- Records of edu_hb_ztbxs
-- ----------------------------
INSERT INTO edu_hb_ztbxs VALUES('1', '公开招标'),('2', '邀请招标'),
                                ('3', '无招标');
