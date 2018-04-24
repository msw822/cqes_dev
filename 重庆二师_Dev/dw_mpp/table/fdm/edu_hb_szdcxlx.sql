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
-- Table structure for edu_hb_szdcxlx
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_szdcxlx;
CREATE TABLE edu_hb_szdcxlx (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[所在地城乡类型代码]规定各级各类学校（教育机构）所在地城市与乡村的分类。';

-- ----------------------------
-- Records of edu_hb_szdcxlx
-- ----------------------------
INSERT INTO edu_hb_szdcxlx VALUES('1', '城镇'),('11', '城区'),
                              ('111', '主城区'),('112', '城乡结合区'),
                              ('12', '镇区'),('121', '镇中心区'),
                              ('122', '镇乡结合区'),('123', '特殊区域'),
                              ('2', '乡村'),('210', '乡中心区'),
                              ('220', '村庄');
