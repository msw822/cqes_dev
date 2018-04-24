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
-- Table structure for edu_hb_jzwjdnr
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_jzwjdnr;
CREATE TABLE edu_hb_jzwjdnr (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[建筑物鉴定内容代码]规定建筑物的鉴定内容的分类。';

-- ----------------------------
-- Records of edu_hb_jzwjdnr
-- ----------------------------
INSERT INTO edu_hb_jzwjdnr VALUES('1', '抗震鉴定'),('2', '安全鉴定'),
                                ('3', '抗淹没抗洪水冲击鉴定'),
                                ('4', '抗风险能力验算'),
                                ('5', '其他鉴定');
