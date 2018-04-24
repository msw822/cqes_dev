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
DROP TABLE IF EXISTS edu_hb_xmzxzt;
CREATE TABLE edu_hb_xmzxzt (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称'
)DEFAULT CHARSET=utf8 COMMENT='[XMZXZT 项目执行状态代码]规定了科学研究项目执行状态的分类,用一位数字表示';

-- ----------------------------
-- Records of edu_hb_xmzxzt
-- ----------------------------
INSERT INTO `edu_hb_xmzxzt` VALUES ('1', '在研');
INSERT INTO `edu_hb_xmzxzt` VALUES ('2', '中止');
INSERT INTO `edu_hb_xmzxzt` VALUES ('3', '延期');
INSERT INTO `edu_hb_xmzxzt` VALUES ('4', '结题');
