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
-- Table structure for edu_hb_yblb
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_yblb;
CREATE TABLE edu_hb_yblb (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[阅办类别代码]规定公文办理流程的节点编码。';

-- ----------------------------
-- Records of edu_hb_yblb
-- ----------------------------
INSERT INTO edu_hb_yblb VALUES('1', '阅文'),('2', '拟办'),
                              ('3', '批办'),('4', '承办'),
                              ('5', '催办'),('6', '办复'),
                              ('7', '注办'),('8', '暂存');
