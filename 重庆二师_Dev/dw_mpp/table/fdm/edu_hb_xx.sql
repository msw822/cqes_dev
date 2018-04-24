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
DROP TABLE IF EXISTS edu_hb_xx;
CREATE TABLE edu_hb_xx (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(20) NOT NULL COMMENT '名称',
  `JC` VARCHAR(10) NOT NULL COMMENT '简称'
)DEFAULT CHARSET=utf8 COMMENT='[血型代码]规定了人类血型的分类编码，采用顺序码，用一位数字表示。';

-- ----------------------------
-- Records of edu_hb_xx
-- ----------------------------
INSERT INTO `edu_hb_xx` VALUES ('0', '未知血型','未知');
INSERT INTO `edu_hb_xx` VALUES ('1', 'A 血型','A');
INSERT INTO `edu_hb_xx` VALUES ('2', 'B 血型','B');
INSERT INTO `edu_hb_xx` VALUES ('3', 'AB 血型','AB');
INSERT INTO `edu_hb_xx` VALUES ('4', 'O 血型','O');
INSERT INTO `edu_hb_xx` VALUES ('5', 'RH 阳性血型','RH+');
INSERT INTO `edu_hb_xx` VALUES ('6', 'RH 阴性血型','RH-');
INSERT INTO `edu_hb_xx` VALUES ('7', 'HLA 血型','HLA');
INSERT INTO `edu_hb_xx` VALUES ('8', '未定血型','未定');
INSERT INTO `edu_hb_xx` VALUES ('9', '其他血型','其他');