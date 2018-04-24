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
-- Table structure for edu_hb_sgdwzzdj
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_sgdwzzdj;
CREATE TABLE edu_hb_sgdwzzdj (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[施工单位资质等级代码]规定施工单位所具有的工程建设资质等级分类。';

-- ----------------------------
-- Records of edu_hb_sgdwzzdj
-- ----------------------------
INSERT INTO edu_hb_sgdwzzdj VALUES('1', '特级'),('2', '一级'),
                                ('3', '二级'),('4', '三级'),('5', '无');
