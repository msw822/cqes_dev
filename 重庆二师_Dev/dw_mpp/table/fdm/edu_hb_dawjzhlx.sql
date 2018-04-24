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
-- Table structure for edu_hb_dawjzhlx
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_dawjzhlx;
CREATE TABLE edu_hb_dawjzhlx (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[档案文件组合类型代码]规定档案文件的组合类型。';

-- ----------------------------
-- Records of edu_hb_dawjzhlx
-- ----------------------------
INSERT INTO edu_hb_dawjzhlx VALUES('1', '单件'),('2', '组合文件');
